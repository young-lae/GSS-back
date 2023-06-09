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
<link rel="stylesheet" href="${cpath}/resources/CSS/player.css">
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
		<jsp:include page=""/>
	</div>
	<!--머리-->

  <div class="player-wrapper">
    <div class="player_back">
      <div class="player_img">
        <img src="/img/강민성.jpg" alt="">
      </div>
      <div class="player">
        <p>선수명 : 윤정현</p>
        <p>생년월일 : 1998년 04월 21일</p>
        <p>신장 : 999cm 99kg</p>
      </div>
    </div>
    <br>
    <div class="player-record">
      <table>
        <colgroup>
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="5%">
          <col width="7.5%">
          <col width="7.5%">
          <col width="7.5%">
          <col width="7.5%">
          <col width="7.5%">
          <col width="7.5%">
      </colgroup>
        <thead>
          <tr>
            <th>경기</th>
            <th>타석</th>
            <th>타수</th>
            <th>안타</th>
            <th>홈런</th>
            <th>득점</th>
            <th>타점</th>
            <th>볼넷</th>
            <th>삼진</th>
            <th>도루</th>
            <th>BABIP</th>
            <th>타율</th>
            <th>출루율</th>
            <th>장타율</th>
            <th>OPS</th>
            <th>wOBA</th>
            <th>WAR</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>99</td>
            <td>999</td>
            <td>999</td>
            <td>99</td>
            <td>99</td>
            <td>99</td>
            <td>99</td>
            <td>99</td>
            <td>99</td>
            <td>9</td>
            <td>9.999</td>
            <td>9.999</td>
            <td>9.999</td>
            <td>9.999</td>
            <td>9.999</td>
            <td>9.999</td>
            <td>9.99</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <br><br><br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br><br><br>





  <!--다리-->
  <div class="container">
    <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
      <div class="col-md-4 d-flex align-items-center">
        <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
          <svg class="bi" width="30" height="24">
            <use xlink:href="#bootstrap" />
          </svg>
        </a>
        <span class="mb-3 mb-md-0 text-muted">&copy; 2023 스마트인재개발원</span>
      </div>

      <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
        <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24">
              <use xlink:href="#twitter" />
            </svg></a></li>
        <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24">
              <use xlink:href="#instagram" />
            </svg></a></li>
        <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24">
              <use xlink:href="#facebook" />
            </svg></a></li>
      </ul>
    </footer>
</body>
</div>
<!--다리-->

</html>