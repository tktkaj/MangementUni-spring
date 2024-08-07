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
<link href="${path}/resources/css/writeinfo.css" rel="stylesheet" />
<style>
#sub-menubar {
	margin-left: 50px;
	background-color: #024C86;
	margin-top: 110px;
	width: 200px;
	height: 200px !important;
	float: left;
}

h1 {
	margin-top: 200px;
}
</style>
<title>공지사항 작성</title>
</head>
<body>
	<c:if test="${not empty msg}">
		<script>
			alert('${msg}');
		</script>
		<c:remove var=" msg" />
	</c:if>
	
	<div><jsp:include page="../common/header.jsp" /></div>
	<div id="menuBar">
		<div id="sub-menubar">
			<ul id="menulist">
				<li><a href="infoboard">공지사항 관리</a></li>
				<li><a href="scholarList">장학금 관리</a></li>
				<li><a href="objectionlist">성적 관리</a></li>
				<li><a href="calendar">학사 일정</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div id="content">
					<!-- title view -->
					<div id="pageTitle">
						<h1>공지사항 작성</h1>
					</div>
					<!-- content view -->
					<form action="writeinfoPro" method="post"
						style="margin-bottom: 20px;">
						<table>
							<tr>
								<th width="50"><span>제목</span></th>
								<td><input type="text" placeholder="제목을 입력하세요" name="title"></td>
							</tr>
							<tr>
								<th width="50"><span>파일</span></th>
								<td><input type="file" name="filename"></td>
							</tr>
							<tr>
								<th width="50"><span>내용</span></th>
								<td><textarea placeholder="내용을 입력하세요" name="detail"></textarea></td>
							</tr>
							<tr class="table-secondary">
								<td colspan="3" align="center"><input
									class="btn btn-outline-primary btn-sm" type="submit" value="등록"
									style="font-size: 13px;" /> <input
									class="btn btn-outline-danger btn-sm" type="reset" value="다시쓰기"
									style="font-size: 13px;" /> <input
									class="btn btn-outline-warning btn-sm" type="button"
									value="돌아가기" style="font-size: 13px;" onclick="history.back()" />
								</td>
							</tr>
						</table>
					</form>
				</div>
				<!-- content div -->
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="../common/footer.jsp" />
