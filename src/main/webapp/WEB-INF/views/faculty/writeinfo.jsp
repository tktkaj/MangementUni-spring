<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<link href="${path}/resources/css/objection.css" rel="stylesheet" />
<link href="${path}/resources/css/infodetail.css" rel="stylesheet" />
<title>공지사항 게시글 작성</title>
<style>
#tbl-board {
	width: 100%;
	max-width: 1000px;
	margin: 0 auto;
	border-collapse: collapse;
}

#tbl-board th, #tbl-board td {
	padding: 15px;
	border: 1px solid #ddd;
	text-align: left;
	font-size: 16px;
	height: 50px;
}

#tbl-board th {
	background-color: #f2f2f2;
	font-weight: bold;
}

#tbl-board input[type="text"], #tbl-board textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
}

#tbl-board textarea {
	resize: none;
}

.button-group {
	display: flex;
	justify-content: space-between;
	margin: auto;
}

.button-group button {
	font-size: 18px;
	padding: 10px 38px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	background-color: #024C86;
	color: white;
	margin: auto;
}

.button-group button:last-child {
	margin-right: 0;
}

.button-group button:hover {
	opacity: 0.8;
}

.table-secondary {
	margin-top: 20px;
	justify-content: right;
	display: flex;
}

.table-secondary .btnlist {
	background-color: #024C86 !important;
	font-color: white;
	font-weight: bold;
	font-size: 13px;
	padding: 10px 20px;
	display : right;
	margin-left: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100px;
	height: 40px;
}

.backbtn {
	margin-top: 30px;
	text-align: center;
}

.backbtn .btnlist{
	background-color: #024C86 !important;
	font-color: white;
	font-weight: bold;
	font-size: 13px;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 120px;
	height: 60px;
}
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<c:set var="searchType" value="${param.searchType}" />
	<c:if test="${empty searchType}">
		<c:set var="searchType" value="title" />
	</c:if>

	<div id="menuBar">
		<div id="sub-menubar" style="height: 150px;">
			<ul id="menulist">
				<li><a href="infoboard">공지사항 관리</a></li>
				<li><a href="scholarlist">장학금 관리</a></li>
				<li><a href="objectionlist">성적 관리</a></li>
			</ul>
		</div>
	</div>

	<div class="container" style="height: 700px; margin-top: 100px;">
		<div id="content">
			<div id="pageTitle">
				<h1>공지사항 게시글 작성</h1>
			</div>
			<div id="pageContent">
				<form action="writeinfoPro" method="post"
					style="margin-bottom: 20px;" onsubmit="return validateForm()">
					<table id="tbl-board">
						<tr>
							<th><span>제목</span></th>
							<td><input type="text" placeholder="제목을 입력하세요" name="title"></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td><input type="file" name="uploadFile" /> <c:if
									test="${!empty board.originalFilename}">
									<a
										href="javascript:fileDownload('${board.originalFilename}', '${board.originalFilename}')">
										<img src="${path}/resources/images/file.png" width="20"
										height="20" /> <c:out value="${board.originalFilename}"></c:out>
									</a>
									<script>
										function fileDownload(oriname, rename) {
											const url = "${path}/board/fileDown";
											let oName = encodeURIComponent(oriname);
											let rName = encodeURIComponent(rename);
											location.assign(url + "?oriname="
													+ oName + "&rename="
													+ rName);
										}
									</script>
								</c:if></td>
						</tr>
						<tr>
							<th width="50"><span>내용</span></th>
							<td><textarea placeholder="내용을 입력하세요" name="detail"
									style="border: 1px solid #ccc; padding: 10px; width: 100%; height: 300px; overflow-y: auto;"></textarea></td>
						</tr>
					</table>
					<div class="table-secondary">
						<input class="btn btnlist" type="submit" value="등록"
							style="color: white; font-weight: bold; font-size: 16px;" /> <input
							class="btn btnlist" type="reset" value="다시 작성"
							style="color: white; font-weight: bold; font-size: 16px; margin-right: 95px;" />
					</div>
					<div class="backbtn">
						<input class="btn btnlist" type="button" value="작성 취소"
							onclick="history.back()"
							style="color: white; font-weight: bold; font-size: 16px;" />
					</div>
				</form>
			</div>
		</div>
	</div>

	<%-- <jsp:include page="../common/footer.jsp" /> --%>

	<script>
		function validateForm() {
			var title = document.getElementsByName("title")[0].value.trim(); // 제목 필드의 값 가져오기 및 공백 제거
			var detail = document.getElementsByName("detail")[0].value.trim(); // 내용 필드의 값 가져오기 및 공백 제거

			if (title === "") {
				alert("제목을 입력하세요.");
				return false; // 폼 제출 중단
			}

			if (detail === "") {
				alert("내용을 입력하세요.");
				return false; // 폼 제출 중단
			}

			return true; // 모든 조건을 만족하면 폼 제출
		}
	</script>


</body>
</html>
