<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>popup</title>
<style>

.popup {
	width: 850px;
	height: 150px;
	box-sizing: border-box;
	padding: 10px;
	border: 2px solid #f04640;
	background-color: rgba(128, 128, 128, 0.253);
}

.btncontainer {
	display: flex;
	justify-content: center;
	margin-top: 30px;
	gap: 100px;
}

.btnn {
	cursor: pointer;
	width: 120px;
	height: 35px;
	font-family: 'SUIT';
	font-style: normal;
	font-size: 12px;
	color: red;
	margin-right: 10px;
	background-color: rgb(2, 76, 134);
	
}

.h1 {
	color: red;
	font-size: 30px;
	text-align: center;
}
</style>
</head>

<body>
	<div class="popup">
		<div class="h1">전송하시면 내용을 취소하시거나 수정하실 수 없습니다.</div>
		<div class="btncontainer">
			<input type="button" class="btnn" id="check" onclick="closePopup();"
				value="부탁드리기"> <input type="button" class="btnn"
				onclick="self.close();" value="닫기">
		</div>
	</div>

	<script>
		function closePopup() {
			if (document.getElementById("check").value) {
				self.close();
			}
		}
	</script>
</body>

</html>
