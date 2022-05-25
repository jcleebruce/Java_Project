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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<link rel="stylesheet" type="text/css" href="../css/myPage_review.css">
</head>
<body>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1 class="h3">이용후기</h1>
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
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
				<tr>
					<td class="num"><span>1</span></td>
					<td class="tit">
						<div class="text-wrap">
							<a class="subject-link" href=""> <span class="category">[수다]</span>
								"내용1"
							</a>
						</div>
					</td>
					<td class="user">유저닉네임</td>
					<td class="date">날짜</td>
					<td class="view">조회수</td>
				</tr>
			</tbody>
		</table>
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
						<a href="review_board.jsp" class="btn btn-primary float-right">글쓰기</a>
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
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>