<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>


<div class="container">
	<sec:authentication property="principal.memberVO.userId" var="userId"/>
	<h2>회원 페이지</h2>
	<br>
	<button class="btn btn-danger" onclick="location.href='${contextPath}/customLogout'">로그아웃</button>
	<button class="btn btn-success" onclick="location.href='${contextPath}/member/myPage/${userId}'">내 정보 보기</button>
</div>

<img alt="logo" src="${contextPath}/resources/img/son.jpg" height="400px" width="600px">

<%@ include file="../layout/footer.jspf" %>
<style>
	.container {width: 400px; margin: auto;   transform : translateY(150px) }
	footer{position:  absolute; bottom:0; width: 100%}
</style>
