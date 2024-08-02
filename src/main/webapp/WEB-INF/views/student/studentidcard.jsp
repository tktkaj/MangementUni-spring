<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Card Example</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.card-text {
	margin-bottom: 0.25rem;
	position: relative;
	z-index: 2;
}

.images-img {
	gap: 10px;
}

.logo-img {
	width: auto;
	height: 2rem;
	margin-left: 0.5rem;
	position: relative;
	z-index: 2;
}

.dragon-img {
	width: 2.5rem;
	height: auto;
	position: absolute;
	right: 7px;
}

.barcode-img {
	width: auto;
	height: 340px;
	position: absolute;
	margin-left: 170px;
	margin-top: -290px;
}

.title-container {
	display: flex;
	align-items: center;
	position: relative;
	z-index: 2;
	margin-top: 15px;
}

.background {
	background: linear-gradient(45deg, rgb(255, 255, 255),
		rgb(255, 255, 255));
}

.card-body {
	position: relative;
	padding: 0;
}

.sin {
	font-size: 23px;
	font-weight: bolder;
	margin-left: 30px;
}

.sin1 {
	margin-top: 20px;
	line-height: 1;
	text-align: center;
}

.text-container {
	text-align: center;
}

img {
	display: block;
	margin: 0;
	padding: 0;
}
</style>
</head>

<body>
	<div class="card mb-3" style="max-width: 540px;">
		<div class="background">
			<div class="row no-gutters">
				<div class="col-md-4">
					<img src="./img/유제욱.jpg" class="img-fluid rounded-start" alt="설명">
				</div>
				<div class="col-md-6">
					<div class="card-body">
						<div class="sin">
							<p class="card-text">유제욱</p>
							<p class="card-text">20240730</p>
							<p class="card-text">화학과</p>
						</div>
						<div class="sin1">
							<p class="card-text">MONTH/YEAR</p>
							<p class="card-text">04/30</p>
						</div>
						<div class="title-container">
							<img src="./img/logo.png"
								class="img-fluid rounded-start logo-img" alt="설명">
							<h5 class="card-title mb-0">미르대학교학생처장</h5>
							<img src="./img/dragon-312035_640.png"
								class="img-fluid rounded-start dragon-img" alt="설명">
						</div>
						<div class="text-container">
							<p class="card-text mb-0">
								<small class="text-muted">mirruniversity</small>
							</p>
						</div>
						<img src="./img/바코드.png"
							class="img-fluid rounded-start barcode-img" alt="설명">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>