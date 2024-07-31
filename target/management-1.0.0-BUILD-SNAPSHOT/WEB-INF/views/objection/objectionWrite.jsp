<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 이의 신청</title>
<link href="${path}/resources/css/objection.css" rel="stylesheet" />
<style>
.contentView {
	text-align: left;
}

.contentView table {
	align: center;
}

.wirteTable {
	margin-top: 100px;
	margin-left: 400px;
	border: 2px solid #024C86;
	border-radius: 50px;
	text-align: top !important;
}

</style>
</head>
<body>
	<div id="menuBar">
		<div id="sub-menubar">
			<ul id="menulist">
				<li><a href="#">공지사항 관리</a></li>
				<li><a href="scholarList">장학금 관리</a></li>
				<li><a href="objection">성적 관리</a></li>
				<li><a href="">학사 일정</a></li>
			</ul>
		</div>
	</div>

	<div class="container" style="height: 500px;">

		<div id="content">
			<div id="pagetitle">
				<h1>성적 이의 신청</h1>
			</div>

			<div class="contentView">
				<form action="/" method="post">
					<table class="wirteTable">
						<tr>
							<th width="150">과목명</th>
							<td><label for="subjectTitle" name="subjectTitle">C언어 활용</label></td>
						</tr>
						<tr>
							<th width="150"><span>이의 신청 내용</span></th>
							<td><textarea rows="5" cols="40" placeholder="내용을 입력하세요" name="detail"></textarea></td>
						</tr>

						<tr class="table-secondary">
							<td colspan="3" align="center">
							<input class="btn btn-outline-primary btn-sm" type="submit" value="등록" style="font-size: 13px; background-color: #024C86; color: white; text-align:center;" /> 
							<input class="btn btn-outline-danger btn-sm" type="reset" value="다시쓰기" style="font-size: 13px; background-color: #024C86; color: white; padding:10px;" /> 
							<input class="btn btn-outline-warning btn-sm" type="button" value="돌아가기" style="font-size: 13px; background-color: #024C86; color: white; text-align:center;" 
								   onclick="history.back()" /></td>
						</tr>
					</table>
				</form>
			</div> <!-- contentView -->
		</div>	<!-- content -->
	</div>	<!-- container -->
</body>
</html>
<jsp:include page="../common/footer.jsp" />