<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path"
	value="${pageContext
	   		   .request
	   		   .contextPath}" />
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비밀번호 변경</title>
<link rel="stylesheet" href="main.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
h1 {
	color: black;
}

.sub {
	color: red;
}

hr {
	border: 1px solid #000;
}

/*.input-group {
	border: 2px solid rgb(2, 76, 134); 
	
	
}*/

.container {
	margin-top: 20px;
}

.form-control {
	border-color: black;
}

.input-background {
	background-color: rgba(128, 128, 128, 0.253);
	padding: 20px;
	border-radius: 10px;
	border-width: 2px;
	border-style: solid;
	border-color: rgb(2, 76, 134);
}

.custom {
	max-width: 900px;
	margin: 0 auto;
	text-align: center;
}

.btn-wide {
	width: 30%;
}

.custom-button {
	background-color: rgb(2, 76, 134);
	color: #ffffff;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	width: 300px;
}
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />


	<div>
		<div>
			<div class="container">
				<div class="custom">
					<h1 class="mt-4" style="text-align: left;">비밀번호 변경</h1>
					<hr>
					<div class="input-background">
						<div class="container text-center">
							<div class="row row-cols-1">

								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;사용자명&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;학과명&nbsp;&nbsp;&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;전화번호&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;이전PW&nbsp;&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">변경할PW</span> <input
										type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">&nbsp;PW확인&nbsp;&nbsp;</span>
									<input type="text" class="form-control"
										aria-describedby="basic-addon1">
								</div>

							</div>
						</div>
						<div class="d-flex justify-content-center mt-4">
							<button type="button" class="button btn-wide custom-button">암호변경</button>
						</div>
					</div>
					<div style="height: 50px;"></div>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />