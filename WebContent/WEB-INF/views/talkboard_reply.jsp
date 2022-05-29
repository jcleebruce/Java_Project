<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%-- <jsp:include page="../layout/header.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include> --%>
<style>
.row{
    width: 100%;
    padding-right: var(--bs-gutter-x,.75rem);
    padding-left: var(--bs-gutter-x,.75rem);
    margin-right: auto;
    margin-left: auto;
}
</style>
</head>
<body>




		<div class="col-lg-9 ml-auto bg-white sticky-top py-2">
			<div class="row">
				<div class="col-md-4">
					<h4 class="text-dark mb-0">자유게시판</h4>

				</div>
				<div>
					<hr width = "75%">
				</div>
			</div>
			<div class="row">
				

				<div class="col-md-9">
					<!-- 제목창 공간 -->
					<!-- 제목 받아서 채우는 명령어 -->
				</div>
			</div>
			<div class="row">
				<div class="col-md-9">
					<br>
					<!-- 본문 내용 받아서 채우는 명령어 -->
				</div>
			</div>
			<div class="row">

				<div class="col-md-8">
				<form action="replyinput">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="댓글" name="reply">
							<button class="btn btn-outline-primary" type="button">작성</button><!-- 댓글 입력 해서 보내기 -->							
						</div>
					</form>
				</div>
				

			</div>
		</div>
		
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>