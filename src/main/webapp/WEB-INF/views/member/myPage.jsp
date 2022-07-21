<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<br>
	<h2>MY PAGE</h2>
	<c:if test="${not empty member}">
		
		<div class="card">
		  <div class="card-header">내 정보 보기</div>
		  <div class="card-body">
		  		<ul>
		  			<li>이름 : ${member.userName}</li>
		  			<li>아이디 : ${member.userId}</li>
		  			<li>등록일 :  
				<fmt:parseDate var="regDate" value="${member.regDate }" pattern="yyyy-MM-dd'T'HH:mm" />
				<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일 HH시mm분"/></li>
		  		</ul>
		  	</div>
		  <div class="card-footer">
		  	<sec:authorize access="hasRole('ADMIN')">
				관리자 회원입니다.
			</sec:authorize>
		  </div>
		</div>
		
	</c:if>
</div>
<%@ include file="../layout/footer.jspf" %>
<style>
	footer{position:  absolute; bottom:0; width: 100%}
</style>
