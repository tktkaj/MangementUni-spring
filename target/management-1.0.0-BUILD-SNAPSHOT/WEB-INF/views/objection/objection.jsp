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

			<div id="selectTable">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">학기</th>
							<th scope="col">학과</th>
							<th scope="col">과목명</th>
							<th scope="col">담당교수</th>
							<th scope="col">성적</th>
							<th scope="col"></th>
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
								<button type="button" class="btn btn-xs" onclick="location.href='objectionWrite'"
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
								<button type="button" class="btn btn-xs" onclick="location.href='objectionWrite'"
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
								<button type="button" class="btn btn-xs" onclick="location.href='objectionWrite'"
									style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">신청</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div> <!-- selectTable -->
		</div>
	</div> <!-- content -->
	<!-- container -->

</body>
</html>
<jsp:include page="../common/footer.jsp" />