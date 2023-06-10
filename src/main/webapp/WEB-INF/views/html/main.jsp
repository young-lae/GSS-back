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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
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
    <link rel="stylesheet" href="${cpath}/resources/CSS/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
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
    	<jsp:include page="header.jsp"/>
  	 </div>
  	<!--머리-->

  	<div class="wrapper_first">

    <div class="add">
      <main id="main">
        <div class="slider__wrap">
          <div class="slider__img">
            <div class="slider__inner">
              <div class="slider"><img src="http://placehold.it/690x460" alt="이미지1"></div>
              <div class="slider"><img src="http://placehold.it/690x460" alt="이미지1"></div>
              <div class="slider"><img src="http://placehold.it/690x460" alt="이미지1"></div>
              <div class="slider"><img src="http://placehold.it/690x460" alt="이미지1"></div>
              <div class="slider"><img src="http://placehold.it/690x460" alt="이미지1"></div>

            </div>
            <div class="slider__dot">
              <a href="#" class="dot">이미지1</a>
              <a href="#" class="dot">이미지2</a>
              <a href="#" class="dot">이미지3</a>
              <a href="#" class="dot">이미지4</a>
            </div>
          </div>
        </div>
      </main>
    </div>

    <div class="rank">
      <div class="rank_name">
      	<p>팀순위</p>
      </div>
      <table>
        <thead>
          <tr style="background-color: #dee2e6;">
            <th>순위</th>
            <th>팀명</th>
            <th>경기</th>
            <th>승</th>
            <th>패</th>
            <th>무</th>
            <th>승률</th>
            <th>게임차</th>
            <th>연속</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>1</td>
            <td>기아</td>
            <td>48</td>
            <td>32</td>
            <td>16</td>
            <td>0</td>
            <td>0.66</td>
            <td>2</td>
            <td>5승</td>
          </tr>
        </tbody>
      </table>
    </div>

  </div>
  <div class="wrapper_second">
    <a class="prev">&#10094;</a>
    <a class="next">&#10095;</a>
    <ul class="schedule" style="left:0px">
      <li><div><p>5월 12일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 13일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 14일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 15일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 16일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 17일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 18일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 19일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 20일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
      <li><div><p>5월 21일 경기일정</p></div><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""><img src="http://www.placehold.it/250x250" alt=""></li>
    </ul>

  </div>

  <div class="wrapper_third">
    <div class="team_link">
    <ul class="tab-schedule"> 
     
      <li class attr-value="HT">
        <a href="https://tigers.co.kr/"><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_HT.png" alt="KIA">
            <span>KIA</span>
        </a>
    </li>
      <li class attr-value="SK">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_SK.png" alt="SSG">
              <span>SSG</span>
          </a>
      </li>
      <li class attr-value="WO">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_WO.png" alt="키움">
              <span>키움</span>
          </a>
      </li>
      <li class attr-value="LG">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_LG.png" alt="LG">
              <span>LG</span>
          </a>
      </li>
      <li class attr-value="KT">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_KT.png" alt="KT">
              <span>KT</span>
          </a>
      </li>
      
      <li class attr-value="NC">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_NC.png" alt="NC">
              <span>NC</span>
          </a>
      </li>
      <li class attr-value="SS">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_SS.png" alt="삼성">
              <span>삼성</span>
          </a>
      </li>
      <li class attr-value="LT">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_LT.png" alt="롯데">
              <span>롯데</span>
          </a>
      </li>
      <li class attr-value="OB">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_OB.png" alt="두산">
              <span>두산</span>
          </a>
      </li>
      <li class attr-value="HH">
          <a href=""><img src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/emblem/regular/2023/initial_HH.png" alt="한화">
              <span>한화</span>
          </a>
      </li>
  </ul>
</div>
  </div>


  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br><br><br><br><br><br>




	<!--다리-->
	<div class="container">
	    <jsp:include page="footer.jsp"/>
	    <!--main.js-->
	    <script src="${cpath}/resources/JS/main.js"></script>
	</div>
<!--다리-->
</body>
</html>