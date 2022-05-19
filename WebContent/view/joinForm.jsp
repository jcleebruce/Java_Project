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

<jsp:include page="../layout/header_ver2.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="../css/joinForm.css">
<style type="text/css">
header {
	height: 30px;
}

main {
	min-height: 600px;
}
</style>
</head>
<body>
<body>
	<main>
		<div class="container">
			<div class="input-form col-md-12 mx-auto">
				<form name="form" class="validation-form" novalidate>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="" value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">별명</label> <input type="text"
								class="form-control" id="nickname" placeholder="" value=""
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
						<label for="address2">상세주소<span class="text-muted">&nbsp;(필수
								아님)</span></label> <input type="text" class="form-control" id="address2"
							placeholder="상세주소를 입력해주세요.">
					</div>

					<div class="row">
						<div class="mb-3">
							<label for="root">가입 경로</label> <select
								class="form-select d-block w-100" id="root">
								<option value=""></option>
								<option>검색</option>
								<option>카페</option>
							</select>
							<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
						</div>
					</div>

					<div class="row">
						<div class="mb-3">
							<label for="root">충전 타입</label> <select
								class="form-select d-block w-100" id="root">
								<option value=""></option>
								<option>완속</option>
								<option>차데모</option>
								<option>콤보</option>
								<option>AC3상</option>
							</select>
							<div class="invalid-feedback">충전 타입을 선택해주세요.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mt-4 col-lg-12 col-sm-12 text-lg-middle text-center">
						<button class="btn btn-primary btn-lg btn-block" type="submit">가입
							완료</button>
					</div>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2021 YD</p>
		</footer>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
    
    function onPostCode() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log("oncomplete");
				document.getElementById("address").value = data.roadAddress;
			},
		}).open();
	}
  </script>
</body>
</html>