<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="layout/header.jspf" %>



<div class="container">
	
	<h3>Home</h3>
	<div class="list-group">
			<a href="${contextPath}/security/all" class="list-group-item list-group-item-action">로그인 확인</a>
			<a href="${contextPath}/board/list" class="list-group-item list-group-item-action">게시판 바로가기</a>
			<a href="${contextPath}/board/register" class="list-group-item list-group-item-action">글쓰기 바로가기</a>
			<a href="${contextPath}/security/member" class="list-group-item list-group-item-action">회원 페이지</a>
			<a href="${contextPath}/security/admin" class="list-group-item list-group-item-action">관리자 페이지</a>
	</div>
			


		
</div>
<%@ include file="layout/footer.jspf" %>
