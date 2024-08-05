2<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수강 신청 페이지</title>
<link rel="stylesheet" type="text/css" href="courses.css">

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menuBar">
			<ul id="menulist">
				<li><a href="passwordchange">사용자 정보 관리</a></li>
				<li><a href="studentstatus">학적 관리</a></li>
				<li><a href="objection">성적 관리</a></li>
				<li><a href="myCoursesPage">나의 수강 페이지</a></li>
				<li><a href="askpresident">총장님께 바랍니다</a></li>
				<li><a href="idcard">학생증</a></li>
			</ul>
		</div>
	</div>
	<div class="container2" id="content">

		<!-- title view -->
		<div id="pageTitle">
			<h1>수강 신청 페이지</h1>

		</div>
		<div class="summary">개설 과목 총: ${courCount}건</div>
		<div class="filters">
		
		</div>
		<table class="table2">
			<thead>
				<tr>
					<th>번호</th>
					<th>강좌명</th>
					<th>교수명</th>
					<th>인원제한</th>
					<th>강의시간</th>
					<th>학점</th>
					<th>신청</th>
				</tr>
			</thead>
			<tbody>
	<c:forEach var="stuinfo" items="${courlist}" varStatus="status">
				<tr>
					 <td>${status.index + 1}</td>
					<td>${stuinfo.SUB_NAME}</td>
					<td>${stuinfo.PROF_NAME}</td>
					<td>${stuinfo.CLASS_CAP}</td>
					<td>${stuinfo.SUB_ST_TIME}~${stuinfo.SUB_END_TIME }</td>
					<td>${stuinfo.SUB_POINT}</td>
					<td><button class="apply2">신청</button></td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</div>

</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
