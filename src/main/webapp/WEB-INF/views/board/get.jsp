<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<% pageContext.setAttribute("newLineChar", "\n"); %>
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
	  		// 4개의 버튼을 클릭하면 처리하는 부분
	  		$("button").on("click", function(e){
	  			var btn = $(this).data("btn");
	  			var frmData = $("#frm");
	  			if(btn == "list") {
	  				frmData.attr("action", "${cpath}/list")
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
 

  <div class="card">
    <div class="card-header"
    	<div class="jumbotron jumbotron-fluid">
	  		<div class="container">
	    		<h1>GSS MY WAY Project</h1>
	    		<p>Spring WEB</p>
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
								<td><fmt:formatDate value="${vo.write_date}" pattern="yyyy-MM-dd hh-mm-ss"/></td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: center;">
									<button data-btn="list" type="button" class="btn btn-sm btn-primary" >목록</button>
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
