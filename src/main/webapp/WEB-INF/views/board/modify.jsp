<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${cpath}/resources/css/style.css">
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
  	$(document).ready(function(){
  		
  		$("#list").click(function(){
  			var frm = $("#frm");
  			frm.attr("action", "${cpath}/list");
  			frm.submit();
  		});
  	});
  
  </script>
</head>
<body>
 

  <div class="card">
    <div class="card-header"
    	<div class="jumbotron jumbotron-fluid">
	  		<div class="container">
	    		<h1>Spring BOARD Project</h1>
	    		<p>Spring WEB MVC, MySQL, jQuery(Ajax), JSON...</p>
	  		</div>
		</div>
    </div>
    <div class="card-body">
    	<div class="row">
    		<div class="col-lg-2">
    			<jsp:include page="left.jsp"/>
    		</div>
    		<div class="col-lg-7">
    			<div class="card">
	    			<div class="card-body">
	    				<h4 class="card-title">BOARD</h4>
	    				<p class="card-text">게시판 수정</p>
	    				<form id="frm" action="${cpath}/modify" method="post">
	    					<input type="hidden" name="board_seq" value="${vo.board_seq}"/>
	    					<input type="hidden" name="page" value="${cri.page}"/>
	    					<input type="hidden" name="type" value="${cri.type}"/>
	    					<input type="hidden" name="keyword" value="${cri.keyword}"/>
	    					<div class="form=group">
	    						<label>제목:</label>
	    						<input type="text" name="title" id="title" class="form-control" value="${vo.title}"/>
	    					</div>
	    					<div class="form=group">
	    						<label>내용:</label>
	    						<textarea rows="10" name="content" id="content" class="form-control">${vo.content}</textarea>
	    					</div>
	    					<br>
	    					<button id="list" type="button" class="btn btn-sm btn-primary">목록</button>
	    					<button type="submit" class="btn btn-sm btn-primary">수정</button>
	    					<button type="reset" class="btn btn-sm btn-primary">취소</button>
	    				</form>
	    			</div>
    			</div>
    		</div>
    		<div class="col-lg-3">
    			<jsp:include page="right.jsp"/>
    		</div>
    	</div>
    </div> 
    <div class="card-footer">
    	빅데이터 분석서비스 개발자 양성과정(주영래)
    </div>
  </div>


</body>
</html>
