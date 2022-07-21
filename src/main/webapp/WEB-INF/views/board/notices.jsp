<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jspf" %>

<div class="container">
	<div class="jumbotron">
		<h1 class="title">공지사항</h1>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">게시글에서 다른 회원 비방금지</li>
		<li class="list-group-item">첨부파일에 혐오감을 불러일으키는 사진금지</li>
		<li class="list-group-item">현재 오픈기념 이벤트 예정중입니다!</li>
	</ul>

		<sec:authorize access="hasRole('ADMIN')">
			<button class="btn btn-warning" onclick="location.href='${contextPath}/admin'">관리자 페이지로 이동</button>
		</sec:authorize>
		
</div>




<%@ include file="../layout/footer.jspf" %>
<style>
	footer{position:  absolute; bottom:0; width: 100%}
</style>
