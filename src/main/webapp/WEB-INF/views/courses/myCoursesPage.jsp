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
<link href="${path}/resources/css/courses.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menuBar">
			<ul id="menulist">
				<li><a href="passwordchange">사용자 정보 관리</a></li>
				<li><a href="studentStatus">학적 관리</a></li>
				<li><a href="studentinfo">등록 관리</a></li>
				<li><a href="objection">성적 관리</a></li>
				<li><a href="myCoursesPage">나의 수강 페이지</a></li>
				<li><a href="askpresident">총장님께 바랍니다</a></li>
				<li><a href="#">시간표</a></li>
				<li><a href="#">학생증</a></li>
			</ul>
		</div>
	</div>
	<div class="container" style="height: 500px;">

		<div id="content">

			<!-- title view -->
			<div id="pageTitle">
				<h1>나의 수강 페이지</h1>
			</div>

			<!-- content view -->
			<div id="pageContent">
				<div id="improtant">총 조회 건수 ${ count }건</div>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">학과</th>
								<th scope="col">강좌명</th>
								<th scope="col">교수명</th>
								<th scope="col">교시</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td><a href="myCoursesList">Otto</a></td>
								<td>@mdo</td>
								<td>@mdo</td>

							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@mdo</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>@twitter</td>
								<td>@twitter</td>
								<td>@twitter</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- table-responsive div -->
			</div>
			<!-- pageContent div -->
		</div>
		<!-- content div -->
	</div>
	<!-- container div -->

	<jsp:include page="../common/footer.jsp" />
</body>
</html>
