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
	<link rel="stylesheet" href="${cpath}/resources/CSS/teamRanking.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
		<jsp:include page="header.jsp" />
	</div>
	<!--머리-->


	<section id="container">
		<div class="large">
			<aside>
				<h3>순위</h3>
				<ul>
					<li><a href="#">팀 순위</a></li>
				</ul>
			</aside>
			<div id="contents">
				<h4 style="margin-bottom: 25px; font-size: 30px; line-height: 1.2; letter-spacing: -1px;">팀순위</h4>
				<div class="team">
					<div class="yeardate">
						<span class="date">
							<form action="">
								<p> 일정을 선택해주세요. <input type="text" id="datepicker"> </p>
							</form>
						</span> 
						<span> 
							<input name="txtCanlendar" type="text" id="tb1SchedUle" class="Calender blind02"> 
							<img class="ui-datepicker"src="https://lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/calendar.jpg " alt="Select date" title="Select date">
						</span>
					</div>
					<div class="compare mb25">
						<select name="ddlYear" id="ddlYear" class="select01">
							<option selected="selected" value="2023">2023</option>
							<option value="2022">2022</option>
							<option value="2021">2021</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
						</select> 
						<span class="exp2"> 
							<strong> &nbsp;년&nbsp; <span class="color_01">06</span> 월 <span class="color_01">02</span> 일 </strong>
						</span>
					</div>
					<table class="tData">
						<colgroup>
							<col width="60">
							<col width="75">
							<col width="51">
							<col width="40">
							<col width="40">
							<col width="40">
							<col width="60">
							<col width="40">
							<col width="110">
							<col width="50">
						</colgroup>
						<thead>
							<tr>
								<th style="border-left: 0px;">순위</th>
								<th>팀명</th>
								<th>경기</th>
								<th>승</th>
								<th>패</th>
								<th>무</th>
								<th>승률</th>
								<th>게임차</th>
								<th>최근10경기</th>
								<th stlye="border-right:0px">연속</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="border-left: 0px;">1</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">2</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">3</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">4</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">5</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">6</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">7</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">8</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">9</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
							<tr>
								<td style="border-left: 0px;">10</td>
								<td>LG</td>
								<td>50</td>
								<td>32</td>
								<td>17</td>
								<td>1</td>
								<td>0.653</td>
								<td>0</td>
								<td>7승 0무 3패</td>
								<td style="border-right: 0px;">1승</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--다리-->
	<div class="container" style="float: none;">
		<jsp:include page="footer.jsp" />
	</div>
	<!--다리-->
	<script>
		$(function() {
			$('#datepicker').datepicker();
		})
	</script>
	<script>
		$(function() {
			//input을 datepicker로 선언
			$("#datepicker")
					.datepicker(
							{
								dateFormat : 'yy-mm-dd' //달력 날짜 형태
								,
								showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
								,
								showMonthAfterYear : true // 월- 년 순서가아닌 년도 - 월 순서
								,
								changeYear : true //option값 년 선택 가능
								,
								changeMonth : true //option값  월 선택 가능                
								,
								showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
								,
								buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
								,
								buttonImageOnly : true //버튼 이미지만 깔끔하게 보이게함
								,
								buttonText : "선택" //버튼 호버 텍스트              
								,
								yearSuffix : "년" //달력의 년도 부분 뒤 텍스트
								,
								monthNamesShort : [ '1월', '2월', '3월', '4월',
										'5월', '6월', '7월', '8월', '9월', '10월',
										'11월', '12월' ] //달력의 월 부분 텍스트
								,
								monthNames : [ '1월', '2월', '3월', '4월', '5월',
										'6월', '7월', '8월', '9월', '10월', '11월',
										'12월' ] //달력의 월 부분 Tooltip
								,
								dayNamesMin : [ '일', '월', '화', '수', '목', '금',
										'토' ] //달력의 요일 텍스트
								,
								dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
										'금요일', '토요일' ] //달력의 요일 Tooltip
								,
								minDate : "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
								,
								maxDate : "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
							});

			//초기값을 오늘 날짜로 설정해줘야 합니다.
			$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
		});
	</script>
</body>
</html>