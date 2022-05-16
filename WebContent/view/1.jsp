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

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<jsp:include page="../layout/header_ver2.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include>

</head>
<body>
<div id = "contents">
	<div id="lnb">
		<div class="lnb_tit">
			<h2>전기차 게시판</h2>
		</div>
		<ul>
			<li> </li>
			<li class="on">
				<a href="" title="전기차 개요" class="on">전기차 개요</a>
			</li>
			<li class="on">
				<a href="" title="전국 충전소 검색하기" class="on">전국 충전소 검색하기</a>
			</li>
			<li class="on">
				<a href="" title="커뮤니티" class="on">커뮤니티</a>
			</li>
		</ul>
	</div>
	<div id="sub_cont">
		<div class="title_cont">
			<div>
				<h2>전기차 개요</h2>
			</div>
			<hr>
			<div>&nbsp;</div>
			<div id="cont_body">
				<div class="tab_area3">
					<ul>
						<li class="on">
							<a href="/car/electricar">전기차</a>
						</li>
						<li class="on">
							<a href="/car/electricar">수소전기차</a>
						</li>
						<li class="on">
							<a href="/car/electricar">하이브리드차</a>
						</li>
						<li class="on">
							<a href="/car/electricar">플러그인하이브리드차</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>










	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script>
</body>
</html>