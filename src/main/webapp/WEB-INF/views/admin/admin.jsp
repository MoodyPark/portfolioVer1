<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>

<div class="container">
	<div class="jumbotron">
		<h2>관리자 페이지</h2>
		<div>
			<sec:authorize access="hasRole('ADMIN')">
				<sec:authentication property="principal.memberVO" var="member" />
				아이디 : <sec:authentication property="principal.memberVO.userId"/><br>
				이름 : <sec:authentication property="principal.memberVO.userName" /><br>
				권한 : <sec:authentication property="principal.memberVO.authList"/><br> 
			</sec:authorize>
		</div>
	</div>
	
	<button class="btn btn-danger" onclick="location.href='${contextPath}/customLogout'">로그아웃</button>
	
	<div class="container">
		<p>member의 정보입니다</p>
		${member}
	</div>
</div>
<%@ include file="../layout/footer.jspf" %>
<style>
	footer{position:  absolute; bottom:0; width: 100%}
</style>
