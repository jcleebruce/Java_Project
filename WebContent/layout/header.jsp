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

<style type="text/css">
header {
	height: 56px;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-light bg-light fixed-top">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a class="navbar-brand" href="#">title</a>
				<button type="button" class="btn btn-outline-primary">sign-up</button>
				<div class="offcanvas offcanvas-start" tabindex="-1"
					id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
						<button type="button" class="btn-close text-reset"
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div class="offcanvas-body">
						<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="offcanvasNavbarDropdown" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
								<ul class="dropdown-menu"
									aria-labelledby="offcanvasNavbarDropdown">
									<li><a class="dropdown-item" href="#">Action</a></li>
									<li><a class="dropdown-item" href="#">Another action</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="#">Something else
											here</a></li>
								</ul></li>
						</ul>
						<form class="d-flex">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</div>
			</div>
		</nav>
	</header>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>