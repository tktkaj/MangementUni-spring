<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 및 삭제</title>
<link href="${path}/resources/css/objection.css" rel="stylesheet" />
<link href="${path}/resources/css/infodetail.css" rel="stylesheet" />

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

#tbl-board input[type="text"], #tbl-board textarea, #tbl-board input[type="file"]
	{
	width: calc(100% - 20px); /* padding과 border를 고려한 width */
	padding: 8px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
}

#tbl-board textarea {
	resize: none; /* 텍스트 영역 크기 조절 비활성화 */
}

.button-group {
	display: flex;
	justify-content: space-between;
}

.button-group button {
	font-size: 18px;
	padding: 10px 38px;
	margin: auto;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	background-color: #024C86;
	color: white;
	margin-right: 55px;
}

.button-group button:hover {
	opacity: 0.8;
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

	<div class="container" style="height: 850px; margin-top: 100px;">
		<div id="content">
			<div id="pageTitle" style="margin-bottom: 50px;">
				<h1>공지사항 수정</h1>
			</div>
			<div id="pageContent">
				<table id="tbl-board">
					<tr>
						<th>글번호</th>
						<td>${board.bo_no}</td>
					</tr>
					<tr>
						<th>제 목</th>
						<td><input type="text" name="title" value="${board.title}" /></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><c:out value="${board.emp_name}" /></td>
					</tr>
					<tr>
						<th>조회수</th>
						<td><c:out value="${board.readCount}" /></td>
					</tr>
					<tr>
						<th>작성 시간</th>
						<td><fmt:formatDate type="both" value="${board.create_date}" /></td>
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
												+ oName + "&rename=" + rName);
									}
								</script>
							</c:if> <c:if test="${empty board.originalFilename}">
								<span> - </span>
							</c:if></td>
					</tr>
					<tr>
						<th>내 용</th>
						<td><textarea name="content" rows="15">${board.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="button-group">
								<button type="button" id="btnUpdate">수정</button>
								<button type="button" id="btnDelete">삭제</button>
								<button type="button" id="btnCancel">취소</button>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>