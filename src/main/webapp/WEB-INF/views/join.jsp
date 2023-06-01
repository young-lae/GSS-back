<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card" style="min-height: 500px; max-height: 1000px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="card-body">
					<h4 class="card-title">회원가입</h4>
	    			<p class="card-text">가입작성</p>
					<c:if test="${empty mvo}">
						<form id="frm" action="${cpath}/join" method="post">
							<div class="form-group">
								<label>아이디:</label> <input type="text" name="id" class="form-control" />
							</div>
							<div class="form-group">
								<label>비밀번호:</label> <input type="password" name="pw" class="form-control" />
							</div>
							<div class="form-group">
								<label>닉네임:</label> <input type="text" name="nick" class="form-control" />
							</div>
							<div class="form-group">
								<label>유형:</label>
								<select name="type" class="form-control">
								    <option value="fan">야구팬</option>
								    <option value="manager">야구관계자</option>
								</select>
							</div>
							<button type="button" class="btn btn-sm btn-primary form-control">돌아가기</button>
							<button type="submit" class="btn btn-sm btn-primary form-control">회원가입</button>
							<button type="reset" class="btn btn-sm btn-primary form-control">취소</button>
						</form>
					</c:if>
				</div>
			</div>
			<!-- col_end -->
		</div>
	</div>
</body>
</html>