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
<title>성적 관리</title>
<link href="${path}/resources/css/objection.css" rel="stylesheet" />
</head>
<body>
	<div id="menuBar">
		<div id="sub-menubar">
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

	<div class="container" style="height: 800px;">

		<div id="content">
			<div id="pagetitle">
				<h1>나의 성적 관리</h1>
			</div>

			<div id="selectTable">
				<div id="tableList">
					<h5 id="midTitle">&gt; 2024-1학기</h5>
					<div>
						<table class="table mt-2 mb-4">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">학기</th>
									<th scope="col">학과</th>
									<th scope="col">과목명</th>
									<th scope="col">담당교수</th>
									<th scope="col">성적</th>
									<th scope="col">이의 신청</th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<tr>
									<th scope="row">1</th>
									<td>Otto</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>A</td>
									<td>
										<button type="button" class="btn btn-xs"
											onclick="location.href='objectionWrite'"
											style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">신청</button>
									</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>Otto</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>B</td>
									<td>
										<button type="button" class="btn btn-xs"
											onclick="location.href='objectionWrite'"
											style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">신청</button>
									</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>Otto</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>A+</td>
									<td>
										<button type="button" class="btn btn-xs"
											onclick="location.href='objectionWrite'"
											style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">신청</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div id="tableList">
					<h5 id="midTitle">&gt; 2023학년도</h5>
					<table class="table mt-4 mb-2">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">학기</th>
								<th scope="col">학과</th>
								<th scope="col">과목명</th>
								<th scope="col">담당교수</th>
								<th scope="col">성적</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>Otto</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>A</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td>Otto</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>B</td>
							</tr>
							<tr>
								<th scope="row">1</th>
								<td>Otto</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>A+</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- tableList -->
			</div>
			<!-- selectTable -->
		</div>
	</div>
	<!-- content -->
	<!-- container -->

</body>
</html>
<jsp:include page="../common/footer.jsp" />