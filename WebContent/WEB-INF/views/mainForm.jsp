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

<jsp:include page="../layout/header.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include>

<style>
main {
	min-height: 600px;
	background: url("images/bg-masthead.jpg") no-repeat center center;
}

.search_bar {
	width: 550px;
}

h1 {
	text-align: center;
	margin-top: 200px;
	font-size: 90px;
}
</style>
</head>
<body class="d-flex flex-column min-vh-100">

	<main>
		<div class="container-fluid">
			<h1>title</h1>
			<div class="input-group p-2 mb-3 search_bar mx-auto mt-5">
				<input type="text" class="form-control"
					placeholder="Recipient's username"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<button class="btn btn-primary" type="button" id="button-addon2">Button</button>
			</div>
		</div>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>