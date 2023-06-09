<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${cpath}/resources/CSS/community.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8baa64f319aa790ee9e2e48123cf3e4e"></script>
<script type="text/javascript">
	$(document).ready(function() {
						var pageForm = $("#pageForm");
						$(".pagination a").on("click", function(e) {
							e.preventDefault(); // a tag의 고유한 기능을 막는 방법
							var page = $(this).attr("href");
							$("#page").val(page);
							pageForm.submit(); // 폼을 전송
						});

						// 상세보기로 이동
						$(".move").on("click", function(e) {
											e.preventDefault(); // a tag의 고유한 기능을 막는 방법
											var board_seq = $(this).attr("href");
											var tag = "<input type='hidden' name='board_seq' id='board_seq' value='"+board_seq+"'>"
											pageForm.append(tag);
											pageForm.attr("action", "${cpath}/get");
											pageForm.attr("method", "get");
											pageForm.submit();
										});
						// Python과 연동하는 부분
						$("#python").click(function() {
											var form = $("#fileFrm")[0];
											var data = new FormData(form); // name=data(text), name=file(binary)

											$.ajax({
														url : "http://127.0.0.1:5000/test", // flask server
														type : "post",
														data : data,
														processData : false,
														contentType : false,
														cache : false,
														timeout : 60000,
														success : function(data) {
															$("#result").html("<img width='200px' height='200px' src='data:image/png;base64," + data.file + "'>");
														},
														error : function() {
															alert("error");
														}
													});
										});
					});

	function goMsg() {
		$("#myModal").modal("show");
	}
</script>
</head>
<body>
	<div class="card">
		<div class="card-header"
			<div id="jumbotron" class="jumbotron jumbotron-fluid">
	  		<div class="container">
	    		<h1>GSS MY WAY Project</h1>
	    		<p>Spring WEB</p>
	  		</div>
	  		</div>
	  	</div>
	</div>
	<div class="card-body">
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="left.jsp" />
			</div>
			<div class="col-lg-7">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">BOARD</h4>
						<p class="card-text">게시판 리스트</p>
						<c:if test="${empty list}">
							<h3>등록된 게시물이 없습니다.</h3>
						</c:if>
						<c:if test="${!empty list}">
							<table class="table table-bordered table-hover">
								<thead>
									<th>번호</th>
									<th>제목
									</td>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</thead>
								<tbody>
									<c:forEach var="vo" items="${list}">
										<tr>
											<td>${vo.board_seq}</td>
											<td>
												<a class="move" href="${vo.board_seq}">${vo.title}</a>
											</td>
											<td>${vo.nick}</td>
											<td><fmt:formatDate value="${vo.write_date}" pattern="yyyy-MM-dd hh-mm-ss" /></td>
											<td>${vo.views}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
						<!-- 검색 메뉴 -->
						<form class="form-inline" action="${cpath}/list" method="post">
							<div class="container">
								<div class="input-group mb-3">
									<div class="input-group-append">
										<select name="type" class="form-control">
											<option value="nick"
												${pm.cri.type=='nick' ? 'selected' : ''}>이름</option>
											<option value="title"
												${pm.cri.type=='title' ? 'selected' : ''}>제목</option>
											<option value="content"
												${pm.cri.type=='content' ? 'selected' : ''}>내용</option>
										</select>
									</div>
									<input type="text" name="keyword" class="form-control"
										value="${pm.cri.keyword}" />
									<div class="input-group-append">
										<button class="btn btn-success btn-sm">Search</button>
									</div>
								</div>
							</div>
						</form>
						<!-- 페이징 리스트 출력 시작 -->
						<ul class="pagination justify-content-center"
							style="margin: 20px 0">
							<c:if test="${pm.prev}">
								<li class="page-item"><a class="page-link"
									href="${pm.startPage-1}">◀PREV</a></li>
							</c:if>
							<c:forEach var="pageNum" begin="${pm.startPage}"
								end="${pm.endPage}">
								<li class="page-item ${pm.cri.page==pageNum ? 'active' : ''}"><a
									class="page-link" href="${pageNum}">${pageNum}</a></li>
							</c:forEach>
							<c:if test="${pm.next}">
								<li class="page-item"><a class="page-link"
									href="${pm.endPage+1}">NEXT▶</a></li>
							</c:if>
						</ul>
						<form id="pageForm" action="${cpath}/list" method="post">
							<input type="hidden" id="page" name="page" value="${pm.cri.page}" />
							<input type="hidden" id="type" name="type" value="${pm.cri.type}" />
							<input type="hidden" id="keyword" name="keyword" value="${pm.cri.keyword}" />
						</form>
						<!-- 페이징 리스트 출력 끝 -->
						<c:if test="${!empty mvo}">
							<button class="btn btn-success btn-small" onclick="location.href='${cpath}/register'">글쓰기</button>
						</c:if>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<jsp:include page="right.jsp" />
			</div>
		</div>
	</div>
	<div class="card-footer">빅데이터 분석서비스 개발자 양성과정(주영래)</div>
	</div>
	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Message</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<font color="red">삭제된 게시물입니다.</font>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
