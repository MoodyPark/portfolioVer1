<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<div class="listData">
		<input type="hidden" name="bno" id="bno" value="">
		<input type="hidden" name="page" id="page" value="${pageMaker.criteria.page}">
		<input type="hidden" name="type" id="type" value="${pageMaker.criteria.type}">
		<input type="hidden" name="keyword" id="keyword" value="${pageMaker.criteria.keyword}">
	</div>

	<div class="d-flex justify-content-between">
		<form action="${contextPath}/board/list" id="listForm">
			<div class="bg-info">
				<select name="type">
					<option value="">===</option>
					<option value="T" ${pageMaker.criteria.type eq 'T' ? 'selected':''}>제목</option>
					<option value="C" ${pageMaker.criteria.type eq 'C' ? 'selected':''}>내용</option>
					<option value="W" ${pageMaker.criteria.type eq 'W' ? 'selected':''}>작성자</option>
				</select>
				<input type="search" name="keyword" value="${pageMaker.criteria.keyword}">
				<button class="btn btn-success">검색</button>
			</div>
		</form>
		<button class="btn btn-warning" onclick="location.href='register'">글쓰기</button>
	</div>
	
	<h2>자유게시판</h2>
	<table class="table">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정일</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${list}" var="b">
		<tr>
			<td>${b.bno }</td>
			<td>
			 <a href="${b.bno}" class="get">
			 	${b.title }<b>[${b.replyCnt}]</b>
			 </a>
			</td>
			<td>${b.writer }</td>
			<td>
				<fmt:parseDate pattern="yyyyy-MM-dd'T'HH:mm"  var="regDate" value="${b.regDate}" />
				<fmt:formatDate value="${regDate}" pattern="yyyy-MM-dd"/>
			</td>
			<td>
				<fmt:parseDate pattern="yyyyy-MM-dd'T'HH:mm"  var="updateDate" value="${b.updateDate }" />
				<fmt:formatDate value="${updateDate}" pattern="yyyy-MM-dd"/>
			</td>
			<td>${b.viewCount}</td>
		</tr>
		</c:forEach>
	</table>
	
	<div class="d-flex">
		<c:forEach items="${list}" var="b">
			<c:if test="${not empty b.attachList}">
			<div>
				<a href="${b.bno}" class="get">
					<img alt="" src="${contextPath}/display?fileName=${b.attachList[0].imageName}" style="width:200px;">
				</a>
			</div>
			</c:if>
		</c:forEach>
		
	</div>
	
	
	
<ul class="pagination pagination-sm">
	<c:if test="${pageMaker.prev }">
		<li class="page-item"><a href="${pageMaker.startPage-1 }" class="page-link">이전페이지</a></li>
	</c:if>
<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage }" var="pageNum">
		<li class="page-item ${param.page == pageNum ? 'active' : '' }">
			<a href="${pageNum}" class="page-link">${pageNum}</a>
		</li>
	</c:forEach>
	<c:if test="${pageMaker.next }">
	<li class="page-item">
		<a href="${pageMaker.endPage+1 }" class="page-link">다음페이지</a>
	</li>
	</c:if>
</ul>
	
</div>
<%@ include file="../layout/footer.jspf" %>

<script>
$(function(){
	let listForm = $('#listForm');
	$('.pagination a').on('click',function(e){
		e.preventDefault();
		$('.listData').find('#page').val($(this).attr('href'));
		
		if(listForm.find('input[name="keyword"]').val()==''){
			listForm.find('input[name="keyword"]').remove();
			listForm.find('select[name="type"]').remove();
		}
		
		listForm.append($('#page'));
		listForm.submit();
		
	});
	
	$('.get').on('click',function(e){
		e.preventDefault();
		let bno = $(this).attr('href');
		$('#bno').val(bno);
		listForm.append($('#bno'));
		listForm.append($('#page'));
		listForm.attr("action","get");
		listForm.submit();
	})
	
	
	
	
	
})
</script>
<style>
.on {font-weight: 700; color:red;}
</style>
