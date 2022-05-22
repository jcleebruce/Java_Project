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
<style type= "text/css">

#contetns{
	width: 1200px;
	margin: auto;
	overflow: hidden;
	margin-bottom: 100px;
	margin: 0;
    padding: 0;
}

#lnb{
	width: 250px;
	float: left;
	margin: 0;
    padding: 0;
}

#lnb .lnb_tit {
    background: green;
    padding-left: 15px;
    margin: 0;
    padding: 0;
}

#lnb .lnb_tit h2 {
    color: #fff;
    font-size: 22px;
    height: 90px;
    line-height: 90px;
    position: relative;
    background: url(/portal/_images/sub/lnb_bar.gif) no-repeat 0px 26px;
    font-family: 'NanumGothicBlod';
    margin: 0;
    padding: 0;
}

ul {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    margin: 0;
    padding: 0;
}

#lnb ul li {
    border-bottom: 1px solid #e8e8e8;
    border-right: 1px solid #e8e8e8;
    border-left: 1px solid #e8e8e8;
    margin: 0;
    padding: 0;
}

#lnb ul li.on {
    background: #f2f2f2;
    margin: 0;
    padding: 0;
}

#lnb ul li.on > a {
    background: url(/portal/_images/sub/lnb_arrow_on.png) no-repeat 16px 22px;
    padding-left: 26px;
    color: #1a8afe;
    margin: 0;
    padding: 0;
}

#lnb ul li > a {
    font-size: 16px;
    line-height: 51px;
    background: url(/portal/_images/sub/lnb_arrow.png) no-repeat 16px 22px;
    padding-left: 26px;
    display: block;
    margin: 0;
    padding: 0;
}

#sub_cont {
    width: 890px;
    float: center;
    overflow: hidden;
    margin: 0;
    padding: 0;
}

#sub_cont .title_cont {
    overflow: visual;
    height: 80px;
    position: relative;
    margin: 0;
    padding: 0;
}

#sub_cont .title_cont h2 {
    font-size: 35px;
    font-family: 'NanumGothicBlod';
    line-height: 80px;
    margin: 0;
    padding: 0;
}

.tab_area3 ul li {
    float: left;
    width: 25%;
    text-align: center;
    margin: 0;
    padding: 0;
}

.tab_area3 ul li a {
    background: url(/portal/_images/sub/bgc_n1.jpg) no-repeat;
    background-size: 100% 100%;
    display: block;
    padding: 9px 0 15px;
    font-size: 16px;
    color: #666;
    margin: 0;
    padding: 0;
}

div {
    display: block;
    margin: 0;
    padding: 0;
    margin: 0;
    padding: 0;
}

body {
    font-family: '돋움',dotum,Helvetica,sans-serif;
    font-size: 13px;
    color: #232323;
    line-height: 22px;
    font-family: 'NanumGothic';
    margin: 0;
    padding: 0;
}
</style>
</head>
<body>
<div id = "contents">
	<div id="lnb">
		<div class="lnb_tit">
			<h2>전기차 게시판</h2>
		</div>
		<ul>
			<li>
				<a href="" title="전기차 개요" >전기차 개요</a>
			</li>
			<li>
				<a href="" title="전국 충전소 검색하기">전국 충전소 검색하기</a>
			</li>
			<li>
				<a href="" title="커뮤니티">커뮤니티</a>
			</li>
		</ul>
	</div>
	<div id="sub_cont">
		<div class="title_cont">
			<div>
				<h2>전기차 개요</h2>
			</div>
			<hr sytle="border:dimgray 1px dashed">
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