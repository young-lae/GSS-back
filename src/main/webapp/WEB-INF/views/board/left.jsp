<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<div class="card" style="min-height: 500px; max-height: 1000px;">
	<div class="row">
		<div class="col-lg-12">
			<div class="card-body">
				<c:if test="${empty mvo}">
					<form action="${cpath}/login" method="post">
						<div class="form-group">
							<label>아이디:</label> <input type="text" name="id" class="form-control" />
						</div>
						<div class="form-group">
							<label>비밀번호:</label> <input type="password" name="pw" class="form-control" />
						</div>
						<button class="btn btn-sm btn-primary form-control">로그인</button>
					</form>
					<button class="btn btn-success btn-small"
					onclick="location.href='${cpath}/join'">회원가입</button>
				</c:if>
				<c:if test="${!empty mvo}">
					<h4 class="card-title">${mvo.nick}님 환영합니다.</h4>
					<form action="${cpath}/logout" method="post">
						<button class="btn btn-sm btn-primary form-control">로그아웃</button>
					</form>
				</c:if>
			</div>
		</div>	  <!-- col_end -->
	</div>        <!-- row_end -->
</div>