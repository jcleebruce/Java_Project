<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<link rel="stylesheet" type="text/css" href="../css/myPage_review.css">
</head>
<body>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1 class="h3">공지사항</h1>
	</div>

	<div class="table-responsive">
		<table class="table table-hover table-sm">
			<colgroup>
				<col class="size01" data-alias="number">
				<col class="size02" data-alias="subject">
				<col class="size03" data-alias="writer">
				<col class="size04" data-alias="date">
				<col class="size05" data-alias="hit">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">글쓴이</th>
					<th scope="col">등록일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(vec) > 0}">
						<c:forEach items="${vec }" var="vec">
							<tr>
								<th scope="row">${vec.num}</th>
								<td>${vec.Subject }</td>
								<td>${vec.Writer }</td>
								<td>${vec.Reg_date }</td>
								<td>${vec.Readcount }</td>
							</tr>
						</c:forEach>
					</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6">작성한 글이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>							
			</tbody>
		</table>
	</div>
	
	<div class="row">
					<div class="col-md-3">
						<!-- <form method="get" name="search">					
						<div class="input-group">
						
							<input type="text" class="form-control" placeholder="Search" name="searchtext">
							<button class="btn btn-outline-primary" type="submit">
								검색</button>
						</div>
					</form>		 -->
					</div>
					<div class="col-md-8"></div>
					<div class="col-md-1">
							<button class="btn btn-primary float-right" type="button" onclick="location.href='noticewrite'">글쓰기</button> 
					</div>
					<div>
						<nav aria-label="pagenav">
							<ul class="pagination justify-content-center">
							<c:if test="${pageMaker.prev }">
								<li class="page-item"><a class="page-link" href='<c:url value="community_notice?page=${pageMaker.startPage-1 }"/>'>이전</a></li>
							</c:if>		
							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
								<li class="page-item"><a class="page-link" href='<c:url value="community_notice?page=${pageNum }"/>'>${pageNum }</a>
								</li>							
							</c:forEach>	
							<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
								 <li class="page-item"><a class="page-link"	href='<c:url value="community_notice?page=${pageMaker.endPage+1 }"/>'>다음</a>
								</li>
							</c:if>
							</ul>
						</nav>
					</div>
				</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>