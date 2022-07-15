<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<c:if test="${not empty member}">
		
		<div class="card">
		  <div class="card-header">내 정보 보기</div>
		  <div class="card-body">
		  		<ul>
		  			<li>이름 : ${member.userName}</li>
		  			<li>아이디 : ${member.userId}</li>
		  			<li>비밀번호 : ${member.userPw}</li>
		  		</ul>
		  	</div>
		  <div class="card-footer">비밀번호는 암호화 되어 있습니다.</div>
		</div>
		
	</c:if>
</div>
<%@ include file="../layout/footer.jspf" %>

