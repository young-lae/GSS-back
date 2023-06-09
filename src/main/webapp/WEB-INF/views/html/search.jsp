<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
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
<link rel="stylesheet" href="${cpath}/resources/CSS/search.css">
<script type="text/javascript">
	$(document).ready(function() {
		var pageForm = $("#pageForm");
		$(".pagination li a").on("click", function(e) {
			e.preventDefault(); // a tag의 고유한 기능을 막는 방법
			var page = $(this).attr("href");
			$("#page").val(page);
			pageForm.submit(); // 폼을 전송
		});
		// 상세보기로 이동
		$(".move").on("click", function(e) {
			e.preventDefault(); // a tag의 고유한 기능을 막는 방법
			var board_seq = $(this).attr("href");
			var tag = "<input type='hidden' name='player_seq' id='player_seq' value='"+player_seq+"'>"
			pageForm.append(tag);
			pageForm.attr("action", "${cpath}/p_get");
			pageForm.attr("method", "get");
			pageForm.submit();
		});
	});
</script>
</head>

<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="bootstrap" viewBox="0 0 118 94">
            <title>Bootstrap</title>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
            </path>
        </symbol>
    </svg>

	<!--머리-->
	<div class="container">
		<jsp:include page="header.jsp" />
	</div>
	<!--머리-->


	<section id="container">
		<div class="large">
			<aside>
				<h3
					style="font-size: 20px; margin: 0 0 30px 15px; padding-bottom: 25px;">일정/결과</h3>
				<ul>
					<li><a href="">스마트인재개발원</a></li>
				</ul>
			</aside>

			<div id="contents">
				<h4 style="margin-bottom: 25px; font-size: 30px; line-height: 1.2; letter-spacing: -1px;">선수조회</h4>
				<form action="${cpath}/search" method="post">
					<div class="date-select">
						<div class="boardSearch">
							<select name="teamname" id="Search" class="select" title="검색영역">
								<option selected="selected" value="키움"}>키움</option>
								<option selected="selected" value="LG">LG</option>
								<option selected="selected" value="KT">KT</option>
								<option selected="selected" value="NC">NC</option>
								<option selected="selected" value="삼성">삼성</option>
								<option selected="selected" value="롯데">롯데</option>
								<option selected="selected" value="두산">두산</option>
								<option selected="selected" value="한화">한화</option>
								<option selected="selected" value="SSG">SSG</option>
								<option selected="selected" value="KIA">KIA</option>
							</select>
							<select name="pos" id="Search1" class="select" title="검색영역">
								<option selected="selected" value="투수">투수</option>
								<option selected="selected" value="포수">포수</option>
								<option selected="selected" value="내야수">내야수</option>
								<option selected="selected" value="외야수">외야수</option>
							</select> 
							<input type="hidden" name="type" value="name" />
							<input name="keyword" type="text" id="SearchBar" value="${pm.cri.keyword}" class="inputTxt form-control" title="검색어" style="width: 400px; display: inline;">
							
							<input type="submit"  name="btnSearch" id="btnSearch" style="color: #666666!; border-color: #c9cacf" value="검색">
						</div>
					</div>
				</form>

				<div class="date-select">
					<form action="">
						<table>
							<colgroup>
								<col width="8%">
								<col width="9%">
								<col width="8%">
								<col width="10%">
								<col width="15%">
								<col width="22%">
								<col width="28%">
							</colgroup>
							<thead style="background-color: white;">
								<tr>
									<th>등번호</th>
									<th>선수명</th>
									<th>팀명</th>
									<th>포지션</th>
									<th>생년월일</th>
									<th>체격</th>
									<th>연봉</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="player" items="${pList}">
									<tr>
										<td>${player.back_num}</td>
										<td><a class="move" href="${player.player_seq}">${player.name}</td>
										<td>${player.teamname}</td>
										<td>${player.pos}</td>
										<td>${player.birth}</td>
										<td>${player.bodysize}</td>
										<td>${player.salary}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
				<div class="page">
					<!-- 페이징 리스트 출력 시작 -->
					<ul class="pagination justify-content-center page" style="margin: 20px 0">
						<c:if test="${pm.prev}">
							<li class="page-item">
								<a class="page-link" href="${pm.startPage-1}">◀PREV</a>
							</li>
						</c:if>
						<c:forEach var="pageNum" begin="${pm.startPage}" end="${pm.endPage}">
							<li class="page-item ${pm.cri.page==pageNum ? 'active' : ''}">
								<a class="page-link" href="${pageNum}">${pageNum}</a>
							</li>
						</c:forEach>
						<c:if test="${pm.next}">
							<li class="page-item">
								<a class="page-link" href="${pm.endPage+1}">NEXT▶</a>
							</li>
						</c:if>
					</ul>
					<form id="pageForm" action="${cpath}/search" method="post">
						<input type="hidden" id="page" name="page" value="${pm.cri.page}" />
						<input type="hidden" id="teamname" name="teamname" value="${pm.cri.teamname}" />
						<input type="hidden" id="pos" name="pos" value="${pm.cri.pos}" />
						<input type="hidden" id="type" name="type" value="${pm.cri.type}" />
						<input type="hidden" id="keyword" name="keyword" value="${pm.cri.keyword}" />
					</form>
					<!-- 페이징 리스트 출력 끝 -->
			</div>
		</div>
	</section>
	<!--다리-->
	<div class="container" style="float: none;">
		<jsp:include page="footer.jsp" />
	</div>

</body>

<!--다리-->

</html>