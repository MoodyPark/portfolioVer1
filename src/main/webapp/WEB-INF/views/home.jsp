<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="layout/header.jspf" %>

<div class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">ALL ABOUT SOCCER</h1>
  <p class="w3-xlarge">made by ParkSeongHo</p>
  <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top" onclick="location.href='${contextPath}/customLogin'">Log In</button>
</div>

<div class="container">
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-twothird">
				<h3>바로가기</h3>
				<div class="list-group">
					<a href="${contextPath}/member/all" class="list-group-item list-group-item-action">로그인 확인</a>
					<a href="${contextPath}/board/list" class="list-group-item list-group-item-action">게시판 바로가기</a>
					<a href="${contextPath}/board/register" class="list-group-item list-group-item-action">글쓰기 바로가기</a>
					<a href="${contextPath}/member/member" class="list-group-item list-group-item-action">회원 페이지</a>
					<a href="${contextPath}/admin" class="list-group-item list-group-item-action">관리자 페이지</a>
				</div>
			</div>
			<div class="w3-third w3-center">
			    <img alt="logo" src="${contextPath}/resources/img/Zlatan.png" height="250px" width="250px">
			</div>
		</div>
	</div>		
</div>
<%@ include file="layout/footer.jspf" %>



