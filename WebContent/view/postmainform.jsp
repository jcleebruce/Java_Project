<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<jsp:include page="../layout/header.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include>
<title>Insert title here</title>
<style>
.sidebar {
	height: 100vh;
	background: linear-gradient(rgba(0, 0, 0, .7), rgba(0, 0, 0, 0.9));
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	box-shadow: 5px 7px 25px #999;
}

.bottom-border {
	border-bottom: 2px groove #eee;
}
</style>
</head>

<body>



	<div class="container-fluid">
		<div class="row">
			<!-- 사이드바 -->
			<div class="col-lg-3 sidebar sticky-top" id="sidebar">
				<a href="#"
					class="text-white text-center d-block mx-auto py-3 mb-4 bottom-border">피카피카</a>
				<div class="list-group mb-4">
					<a class="btn btn-light">전기차 개요</a> <a class="btn btn-light">전국
						충전소 검색하기</a> <a class="btn btn-light" data-bs-toggle="collapse"
						href="#collapseExample" role="button" aria-expanded="false"
						aria-controls="collapseExample">커뮤니티</a>
					<div class="collapse" id="collapseExample">
						<div class="card card-body">
							<a class="btn btn-light">-공지사항</a> <a class="btn btn-light">-이용후기</a>
							<a class="btn btn-light">-자유게시판</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 메인페이지 -->
			<div class="col-lg-9 ml-auto bg-white sticky-top py-2">
				<div class="row">
					<div class="col-md-4">
						<h4 class="text-dark mb-0">게시판이름</h4>
					</div>
					<div class="col-md-9"></div>
					<!-- <div class="col-md-5">					
						<form action="*">
							<div class="input-group">
							<input type="text" class="form-control" placeholder="강북구 충전소">
							<button class="btn btn-light" type="button">
								검색
							</button>
							</div>
						</form>	
					</div>
					<div class="col-md-3">
						<div class="input-group">
						<button class="btn btn-light" type="button">
						마이페이지
						</button>
						<button class="btn btn-light" type="button">
						로그인
						</button>
						</div>
					</div> -->
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>번호</th>
									<th>태그</th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>샘플숫자1</td>
									<td>[샘플태그]1</td>
									<td>샘플제목1<!-- 아마 제목에 href태그 달아서 이동하도록 사용? --></td>
									<td>샘플이름1</td>
									<td>샘플날자1</td>
									<td>샘플조회수1</td>
								</tr>
								<tr>
									<td>샘플숫자2</td>
									<td>[샘플태그]2</td>
									<td>샘플제목2<!-- 아마 제목에 href태그 달아서 이동하도록 사용? --></td>
									<td>샘플이름2</td>
									<td>샘플날자2</td>
									<td>샘플조회수2</td>
								</tr>
							</tbody>
						</table>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="게시판검색">
							<button class="btn btn-outline-primary" type="button">
								검색</button>
						</div>
					</div>
					<div class="col-md-8"></div>
					<div class="col-md-1">
						<a class="btn btn-primary float-right">글쓰기</a>
					</div>
					<div>
						<nav aria-label="pagenav">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link">이전</a>
									<!-- 페이지수가 늘어나면 이 태그를 아래로 내려서 활성화 가능 --></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">6</a></li>
								<li class="page-item"><a class="page-link" href="#">7</a></li>
								<li class="page-item"><a class="page-link" href="#">8</a></li>
								<li class="page-item"><a class="page-link" href="#">9</a></li>
								<li class="page-item">
									<!-- 일단 임의로 1페이지, 나중에 어느정도 완성 되면 for문 돌리는게 좋을듯--> <a
									class="page-link" href="#">다음</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>