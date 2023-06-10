<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>GSS MY WAY</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8baa64f319aa790ee9e2e48123cf3e4e"></script>
<!--머리다리 CSS-->
<link rel="stylesheet" href="${cpath}/resources/CSS/header_footer.css">
<!--다른 페이지 가져다 쓰는거-->
<link rel="stylesheet" href="${cpath}/resources/CSS/schedule.css">
<!--커뮤니티 CSS-->
<link rel="stylesheet" href="${cpath}/resources/CSS/community.css">
<link rel="stylesheet" href="${cpath}/resources/CSS/page.css"> 
<link rel="stylesheet" href="${cpath}/resources/CSS/aside.css"> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
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
						// 팀별 게시판
						$(".teamCommunity").on("click", function(e) {
							e.preventDefault(); // a tag의 고유한 기능을 막는 방법
							var teamname = $(this).attr("href");
							console.log(teamname);
							var tag = "<input type='hidden' name='teamname' value='"+teamname+"'>";
							pageForm.append(tag);
							pageForm.attr("action", "${cpath}/community");
							pageForm.attr("method", "post");	
							pageForm.submit();
						});
						// 글쓰기 버튼
						$("button").on("click", function(e){
							var btn = $(this).data("btn");
							var formData = $("#register");
							if (btn == "register") {
								formData.attr("action", "${cpath}/register")
								formData.attr("method", "get")
								};
							formData.submit();
							});
					});
</script> 
    </head>
<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="bootstrap" viewBox="0 0 118 94">
            <title>Bootstrap</title>
            <path fill-rule="evenodd" clip-rule="evenodd"
			d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
            </path>
        </symbol>
    </svg>

	<!--머리-->
	<div class="container">
		<jsp:include page="header.jsp" />
	</div>
	<section id="container">
		<div class="large">
			<aside>
				<h3 style="font-size: 20px; margin: 0 0 30px 15px; padding-bottom: 25px;">일정/결과</h3>
				<ul>
					<li>스마트인재개발원</li>
				</ul>
			</aside>
			<div id="contents">
				<h4 style="margin-bottom: 25px; font-size: 30px; line-height: 1.2; letter-spacing: -1px;">커뮤니티</h4>
				<div class="wrapper_third">
					<ul class="tab-schedule">
						<li>
							<a class="teamCommunity" href="all" style="width: 82px">
								<span style="margin-top: 20px;">전체</span>
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="KIA">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_HT.png" alt="KIA"> 
								<span>KIA</span>
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="SSG">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_SK.png" alt="SSG">
								<span>SSG</span>
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="키움">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_WO.png" alt="키움"> 
								<span>키움</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="LG">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_LG.png" alt="LG"> 
								<span>LG</span>
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="KT">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_KT.png" alt="KT"> 
								<span>KT</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="NC">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_NC.png" alt="NC"> 
								<span>NC</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="삼성">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_SS.png" alt="삼성"> 
								<span>삼성</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="롯데">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_LT.png" alt="롯데"> 
								<span>롯데</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="두산">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_OB.png" alt="두산"> 
								<span>두산</span> 
							</a>
						</li>
						<li>
							<a class="teamCommunity" href="한화">
								<img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_HH.png" alt="한화"> 
								<span>한화</span> 
							</a>
						</li>
					</ul>
				</div>
				<br>
				<!-- 검색 메뉴 -->
				<form class="form-inline tb1-type06" action="${cpath}/community" method="post">
					<div class="container">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<select name="type" class="form-control">
									<option value="nick" ${pm.cri.type=='nick' ? 'selected' : ''}>이름</option>
									<option value="title" ${pm.cri.type=='title' ? 'selected' : ''}>제목</option>
									<option value="content"${pm.cri.type=='content' ? 'selected' : ''}>내용</option>
								</select>
							</div>
							<input type="text" name="keyword" class="form-control" value="${pm.cri.keyword}" />
							<div class="input-group-append">
								<button class="btn btn-success btn-sm">Search</button>
							</div>
						</div>
					</div>
				</form>
				<div class="date-select">
					<table class="community_table" border="1">
						<thead>
							<tr>
								<th class="num">번호</th>
								<th class="title">제목</th>
								<th class="writer">글쓴이</th>
								<th class="update">등록일</th>
								<th class="view">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo.board_seq}</td>
									<td>
										<c:if test="${0 eq vo.team_seq}">
											<a class="move" href="${vo.board_seq}">[전체]${vo.title}</a>
										</c:if> 
										<c:if test="${0 ne vo.team_seq}">
											<a class="move" href="${vo.board_seq}">[${vo.teamname}]${vo.title}</a>
										</c:if>
									</td>
									<td>${vo.nick}</td>
									<td><fmt:formatDate value="${vo.write_date}" pattern="yyyy-MM-dd" /></td>
									<td>${vo.views}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 페이징 리스트 출력 시작 -->
				<div class="page">
					<ul class="pagination paging" style="margin: 20px 0">
						<c:if test="${pm.prev}">
							<li class="arrow left">
								<a class="page-link" href="${pm.startPage-1}">◀PREV</a>
							</li>
						</c:if>
						<c:forEach var="pageNum" begin="${pm.startPage}" end="${pm.endPage}">
							<li class="num ${pm.cri.page==pageNum ? 'active' : ''}">
								<a class="page-link" href="${pageNum}">${pageNum}</a>
							</li>
						</c:forEach>
						<c:if test="${pm.next}">
							<li class="arrow right">
								<a class="page-link" href="${pm.endPage+1}">NEXT▶</a>
							</li>
						</c:if>
					</ul>
				</div>
				<form id="pageForm" action="${cpath}/community" method="post">
					<input type="hidden" id="page" name="page" value="${pm.cri.page}" />
					<input type="hidden" id="type" name="type" value="${pm.cri.type}" />
					<input type="hidden" id="keyword" name="keyword" value="${pm.cri.keyword}" />
				</form>
				<!-- 페이징 리스트 출력 끝 -->
				<c:if test="${!empty mvo}">
					<form id="register">
						<button data-btn="register" class="btn btn-success btn-small">글쓰기</button>
					</form>
				</c:if>
			</div>
		</div>
	</section>
	<!--다리-->
	<div class="container" style="float: none;">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>