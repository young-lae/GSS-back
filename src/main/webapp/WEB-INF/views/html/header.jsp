<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${cpath}/resources/CSS/header_footer.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8baa64f319aa790ee9e2e48123cf3e4e"></script>
<!--머리다리 CSS-->
<link rel="stylesheet" href="/CSS/header_footer.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
  <script type="text/javascript">
	  $(document).ready(function(){
	  		// 2개의 버튼을 클릭하면 처리하는 부분
	  		$("button").on("click", function(e){
	  			var btn = $(this).data("btn");
	  			var frmData = $("#frm");
	  			if(btn == "login") {
	  				frmData.attr("action", "${cpath}/login")
	  				frmData.attr("method", "get")
	  			} else if(btn == "join") {
	  				frmData.attr("action", "${cpath}/join");
	  				frmData.attr("method", "get");
	  			}
	  			frmData.submit();
	  		})
	  });
  </script>
<meta charset="utf-8">
	<!--머리-->
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			<a href="${cpath}/main">
				<img src="${cpath}/resources/img/GSS01.png" style="width: 160px; height: 80px;">
			</a>

			<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				<li><a href="${cpath}/monthSchedule" class="nav-link px-2 link-dark">일정/결과</a></li>
				<li><a href="${cpath}/teamRanking" class="nav-link px-2 link-dark">순위</a></li>
				<li><a href="${cpath}/search" class="nav-link px-2 link-dark">선수</a></li>
				<li><a href="${cpath}/news" class="nav-link px-2 link-dark">News</a></li>
				<li><a href="${cpath}/community" class="nav-link px-2 link-dark">커뮤니티</a></li>
			</ul>
			<!-- c:if문 사용하여 사용자가 로그인한 상태인지 아닌지 확인 후 출력 -->
			<c:if test="${empty mvo}">
				<form id="frm" class="col-md-3 text-end">
<<<<<<< HEAD
					<button data-btn="login" type="button" class="btn btn-outline-primary me-2" style="color: #990000 !important; border-color: #990000 !important">로그인</button>
=======
					<button data-btn="login" type="button" class="btn btn-outline-primary me-2" style="border-color: #990000 !important">로그인</button>
>>>>>>> e028cefd44a61f496d11ca2990e72da5510a93f8
					<button data-btn="join" type="button" class="btn btn-primary" style="background-color: #990000 !important; border-color: #990000 !important">회원가입</button>
				</form>
			</c:if>
			<c:if test="${!empty mvo}">
				<h4>${mvo.nick}님 환영합니다.</h4>
				<form action="${cpath}/logout" method="post">
					<button class="btn btn-primary" style="background-color: #990000 !important; border-color: #990000 !important">로그아웃</button>
				</form>
			</c:if>
		</header>
	<!--머리-->