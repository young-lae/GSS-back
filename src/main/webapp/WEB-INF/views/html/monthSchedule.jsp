<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="ko">
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
	<link rel="stylesheet" href="${cpath}/resources/CSS/schedule.css">
	<link rel="stylesheet" href="${cpath}/resources/CSS/monthSchedule.css">
	<link rel="stylesheet" href="${cpath}/resources/CSS/page.css"> 
	<link rel="stylesheet" href="${cpath}/resources/CSS/aside.css"> 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.js'></script>
    <script>
	    document.addEventListener('DOMContentLoaded', function() {
	        var calendarEl = document.getElementById('calendar');
	        var calendar = new FullCalendar.Calendar(calendarEl, {
	          initialView: 'dayGridMonth',
	          headerToolbar: {
		            right: 'dayGridMonth',
		            center: 'prev title next',
		            left: 'today',
		          },
		      titleFormat: function (date) {
		          // YYYY년 MM월
		          return ""+date.date.year+"년 "+(date.date.month+1)+"월";
		          },
		      events : [
		          {
		            title: '물주기',
		            start: '2023-06-01'
		        	},
		        	{
			            title: '윤정현',
			            start: '2023-06-01'
			        	},
			        	{
				            title: '대머리',
				            start: '2023-06-01'
				        	},
				        	{
					            title: '대머리',
					            start: '2023-06-01'
					        	},
					        	{
						            title: '대머리',
						            start: '2023-06-01'
						        	},
	              {
		            title: '뚜껑 닫기',
		            start: '2023-06-03',
		            end: '2023-06-05'
		            }
		           ]
		         
	        });
	        
	        calendar.render();
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
	            <h3>일정/결과</h3>
	            <ul>
	                <li><a href="#">경기 결과</a></li>
	                <li><a href="#">월별 일정</a></li>
	            </ul>
	        </aside>
	
	        <div id="contents">
	            <h4 style="    margin-bottom: 25px;
	            font-size: 30px;
	            line-height: 1.2;
	            letter-spacing: -1px;">월별 일정</h4>
	        <div class="schedulCalender" id='calendar'></div>
	    </div>
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