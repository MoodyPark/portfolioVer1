<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<h2>로그아웃 되었습니다.</h2>
	<p>다시 로그인 할려면 로그인 페이지를 눌러주세요</p>
	<form action="${contextPath}/customLogout" method="post">
		<button class="btn btn-primary">로그인 페이지</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
</div>
<%@ include file="../layout/footer.jspf" %>
<style>
	.container{width: 400px; margin: auto;   transform : translateY(202px) }
	footer{position:  absolute; bottom:0; width: 100%}
</style>