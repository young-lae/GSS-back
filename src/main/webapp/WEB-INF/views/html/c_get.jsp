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
	<!--커뮤니티 작성 CSS-->
	<link rel="stylesheet" href="${cpath}/resources/CSS/community_write.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> 
	<script type="text/javascript">
		  $(document).ready(function(){
		  		// 4개의 버튼을 클릭하면 처리하는 부분
		  		$("button").on("click", function(e){
		  			var btn = $(this).data("btn");
		  			var frmData = $("#frm");
		  			if(btn == "community") {
		  				frmData.attr("action", "${cpath}/community")
		  				frmData.attr("method", "get")
		  				frmData.find("#board_seq").remove()
		  			} else if(btn == "modify") {
		  				frmData.attr("action", "${cpath}/modify");
		  				frmData.attr("method", "get");
		  			} else if(btn == "remove") {
		  				frmData.attr("action", "${cpath}/remove");
		  				frmData.attr("method", "get");
		  			}
		  			frmData.submit();
		  		})
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
						<div class="card-body">
	    				<p class="card-text">게시판 상세보기</p>
						<table class="table">
							<tr>
								<td style="width: 100px">제목</td>
								<td>${vo.title}</td>
							</tr>
							<tr>
								<td>내용</td>
								<td>${fn:replace(vo.content, newLineChar, "<br/>")}</td>
							</tr>		
							<tr>
								<td>작성자</td>
								<td>${vo.nick}</td>
							</tr>
							<tr>
								<td>작성일</td>
								<td><fmt:formatDate value="${vo.write_date}" pattern="yyyy-MM-dd"/></td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: center;">
									<button data-btn="community" type="button" class="btn btn-sm btn-primary" >목록</button>
									<c:if test="${mvo.nick eq vo.nick}">
										<button data-btn="modify" class="btn btn-sm btn-primary">수정</button>
										<button data-btn="remove" class="btn btn-sm btn-primary">삭제</button>
									</c:if>
								</td>								
							</tr>				
						</table>	   
						<form id="frm">
							<input type="hidden" name="board_seq" id="board_seq" value="${vo.board_seq}" />
							<input type="hidden" name="page" value="${cri.page}" />
							<input type="hidden" name="type" value="${cri.type}" />
							<input type="hidden" name="keyword" value="${cri.keyword}" />
						</form>
						<c:if test="${!empty mvo}">
							<div class="card-body">
		    					<form id="frm" action="${cpath}/reply" method="post">
		    						<input type="hidden" id="board_seq" name="board_seq" value="${vo.board_seq}"/>
		    						<input type="hidden" name="page" value="${cri.page}"/>
		    						<input type="hidden" name="type" value="${cri.type}"/>
		    						<input type="hidden" name="keyword" value="${cri.keyword}"/>
		    						<div class="form-group">
		    							<label>댓글:</label>
		    							<textarea rows="3" name="reply_content" class="form-control"></textarea>
		    							<input type="hidden" name="nick" class="form-control" value="${mvo.nick}" readonly="readonly"/>
		    						</div>
		    						<button type="submit" class="btn btn-sm btn-primary">확인</button>
		    						<button type="reset" class="btn btn-sm btn-primary">취소</button>
		    					</form>
			    			</div> 	
		    			</c:if>
		    			<c:if test="${empty reList}">
		    				<div class="card-body">
		    					<span>작성된 댓글이 없습니다.</span>
		    				</div>
		    			</c:if>	
		    			<c:if test="${!empty reList}">
		    				<div class="card-body">
		    					<table>
		    					<tr><td>등록된 댓글</td></tr>
		    					<c:forEach var="re" items="${reList}">
		    						<tr><td>${re.nick} : ${re.reply_content}</td></tr>
		    					</c:forEach>
		    					</table>
		    				</div>
		    			</c:if>			
	    			</div>
				</div>
		</div>
	</section>

	<div class="container" style="float: none;">
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>