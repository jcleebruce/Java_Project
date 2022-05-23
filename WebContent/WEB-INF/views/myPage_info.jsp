<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../script/member.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<link rel="stylesheet" type="text/css" href="../css/joinForm.css">
</head>
<body>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1 class="h3">내 정보 수정</h1>
	</div>

	<div class="container">
		<div class="input-form col-md-12 mx-auto">
			<form name="form" class="validation-form" novalidate>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="id">아이디</label> <input type="text"
							class="form-control" id="id" placeholder="" value="" required>
						<!-- 수정 불가 -->
					</div>
					<div class="col-md-6 mb-3">
						<label for="pwd">비밀번호</label> <input type="text"
							class="form-control" id="pwd" placeholder="" value="" required>
						<!-- 수정 불가 -->
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" id="userName" placeholder="" value="" 
							required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="nickname">별명</label> <input type="text"
							class="form-control" id="nickName" placeholder="" value=""
							required>
						<div class="invalid-feedback">별명을 입력해주세요.</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="email">이메일</label> <input type="email"
						class="form-control" id="email" placeholder="you@example.com"
						required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>

				<div class="row">
					<div class="col-md-9 mb-3">
						<label for="address">주소</label> <input type="text"
							class="form-control" id="address" placeholder="서울특별시 강남구"
							required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>
					<div class="col-md-3 mb-3">
						<button class="btn btn-primary btn-block"
							style="margin-top: 24px;" onclick="onPostCode()">주소 검색</button>
					</div>
				</div>

				<div class="mb-3">
					<label for="address2">상세주소<span class="text-muted">&nbsp;
							(필수아님)</span></label> <input type="text" class="form-control" id="address2"
						placeholder="상세주소를 입력해주세요.">
				</div>
				
				<div class="row">
					<div class="col-md-6 mb-3">
								<label for="phone">전화번호</label> <input type="text"
									class="form-control" id="phone" placeholder="" required>
								<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					<div class="col-md-6 mb-3">
						<label for="root">가입 경로</label> <select
							class="form-select d-block w-100" id="root">
							<option value=""></option>
							<option>검색</option>
							<option>카페</option>
							<option>지인 권유</option>
						</select>
						<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
					</div>
				</div>
				
				<div class="row">
					<div class="mb-3">
						<label for="chargingType">충전 타입</label> <select
							class="form-select d-block w-100" id="chargingType">
							<option value=""></option>
							<option>완속</option>
							<option>차데모</option>
							<option>콤보</option>
							<option>AC3상</option>
						</select>
						<div class="invalid-feedback">충전 타입을 선택해주세요.</div>
					</div>
				</div>

				<div class="row mt-3">
					<div class="col-lg-6 col-sm-6 text-lg-middle text-center">
						<button class="btn btn-primary btn-lg btn-block btn-my"
							onclick="onModify()">수정</button>
					</div>
					<div class="col-lg-6 col-sm-6 text-lg-middle text-center">
						<button class="btn btn-primary btn-lg btn-block btn-my"
							onclick="onDelete()">탈퇴</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!--
	<script>
		window.addEventListener('load', () => {
			const forms = document.getElementsByClassName('validation-form');
			Array.prototype.filter.call(forms, (form) => {
				form.addEventListener('submit', function (event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	</script>	
	-->

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function onPostCode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							console.log("oncomplete");
							document.getElementById("address").value = data.roadAddress;
						},
					}).open();
		}


	</script>
</body>
</html>