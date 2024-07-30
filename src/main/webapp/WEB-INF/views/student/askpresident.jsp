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
<title>총장님께 부탁드립니다.</title>

<script type="text/javascript">
	function popup() {
		
		var url = "popup";
		var name = "popupWindow";
		var specs = "width=880,height=170,top=300,left=300";

		
		var popup = window.open(url, name, specs);

		// 팝업 창이 열리지 않으면(팝업 차단기 활성화 시) 경고 메시지 표시
		if (!popup || popup.closed || typeof popup.closed == 'undefined') {
			alert('팝업 창이 차단되었습니다. 팝업 차단기를 비활성화 해주세요.');
		}
	}
</script>
<link rel="stylesheet" href="main.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
h1 {
	color: black;
	/* 제목 색상 */
}

.sub {
	color: red;
}

hr {
	border: 1px solid #000;
}

.input-group-text {
	background-color: #f8f9fa;
	border-color: black;
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

.custom-container {
	max-width: 800px;
}
</style>
</head>







<body>


	</script>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<div class="container custom-container">
		<div class="custom">

			<h1 class="mt-4" style="text-align: left;">총장님에게 부탁드립니다</h1>
			<hr>
			<h5 class="mt-4" style="text-align: left; color: red;">이 글은 익명성이
				보장됩니다.</h5>

			<div class="col input-background">
				<div class="container text-center">
					<div class="row row-cols-1">
						<div class="col">
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">제목</span> <input
									type="text" class="form-control"
									aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="col">
							<div class="input-group">
								<span class="input-group-text">내용</span>
								<textarea class="form-control" aria-label="With textarea"
									rows="9"></textarea>
							</div>
						</div>
					</div>
				</div>


				<div style="height: 20px;"></div>

				<button type="button" class="button btn-wide custom-button"
					onclick="popup()">글 올리기</button>
			</div>
		</div>
	</div>
	<div style="height: 50px;"></div>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

</body>

</html>







<jsp:include page="/WEB-INF/views/common/footer.jsp" />