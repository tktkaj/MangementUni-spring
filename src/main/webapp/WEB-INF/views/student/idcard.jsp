<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
<link href="${path}/resources/css/courses.css" rel="stylesheet" />
<style>
.card-text {
	margin-bottom: 0.25rem;
	margin-top: 0.25rem;
	position: relative;
	z-index: 2;
}

.images-img {
	gap: 10px;
}

.logo2-img {
	width: 110px;
	height: 100px;
	margin-left: 220px;
	position: relative;
	z-index: 2;
}

.dragon-img {
	width: 2.5rem;
	height: auto;
	position: absolute;
	right: 2px;
}

.barcode-img {
	width: auto;
	height: 340px;
	position: absolute;
	margin-left: 170px;
	margin-top: -230px;
}

.title-container {
	display: flex;
	align-items: center;
	position: relative;
	z-index: 2;
	margin-top: 15px;
	transform: translate(25%, -50%);
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

.d-flex-center {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 70vh;
}

body {
	width: 100%;
}
</style>
</head>
<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menuBar">
			<ul id="menulist">
				<li><a href="studentstatus">학적 조회</a></li>
				<li><a href="passwordchange">학생 정보 변경</a></li>
				<li><a href="objection">성적 조회</a></li>
				<li><a href="myCoursesPage">나의 수강 페이지</a></li>
				<li><a href="courseregistrationpage">수강신청 페이지</a></li>
				<li><a href="askpresident">총장님께 바랍니다</a></li>
				<li><a href="idcard">학생증</a></li>
			</ul>
		</div>
	</div>
	<div class="container" style="height: 600px; margin-top: 100px;">
		<div id="content">
			<!-- title view -->
			<div id="pageTitle">
				<h1>학생증</h1>
			</div>
			<!-- 카드 -->
			<div class="card mb-3" style="max-width: 540px; margin-top: 100px; margin-left: 300px;">
				<div class="background">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="${path}/resources/img/유제욱.jpg"
								class="img-fluid rounded-start" alt="설명">
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<div class="sin">
									<p class="card-text">${stuno }</p>
									<p class="card-text">${name }</p>
									<p class="card-text" style="font-size: 18px;">${deptname }</p>
								</div>
								<div class="sin1">
									<p class="card-text" style="font-size: 12px;">MONTH/YEAR</p>
									<p class="card-text" style="font-size: 12px;">04/30</p>
								</div>
								<div class="title-container">
									<h5 class="card-title mb-0">
										<b>미르대학교 총장</b>
									</h5>

								</div>
								<div class="text-container">

									<img src="${path}/resources/img/logo2.png"
										class="img-fluid logo2-img" alt="설명">
								</div>
								<img src="${path}/resources/img//바코드.png"
									class="img-fluid rounded-start barcode-img" alt="설명">

							</div>
						</div>
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
<jsp:include page="../common/footer.jsp" />

</html>

