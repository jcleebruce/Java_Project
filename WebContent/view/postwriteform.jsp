
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
		<!-- 글작성 -->
		<div class="col-lg-9 ml-auto bg-white sticky-top py-2">
			<div class="row">
				<div class="col-md-4">
					<h4 class="text-dark mb-0">게시판이름</h4>

				</div>
				<div class="col-md-12">
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-md-1">
					<!-- 태그 공간 -->
					<select class="form-select">
						<option selected>태그</option>
						<option value="1">리뷰</option>
						<option value="2">잡담</option>
						<option value="3">팁</option>
					</select>
				</div>

				<div class="col-md-8">
					<!-- 제목창 공간 -->
					<input type="text" class="form-control" placeholder="제목">
				</div>
			</div>
			<div class="row">
				<div class="col-md-9">
					<br>
					<div class="form-group">
						<textarea class="form-control" rows="20" name="bdContent"
							placeholder="내용을 입력해주세요"></textarea>
					</div>
				</div>
			</div>
			<div class="row">

				<div class="col-md-7"></div>
				<div class="col-md-3">
					<br>
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-primary">등록</button>
						<button type="button" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-danger">삭제</button>
					</div>
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