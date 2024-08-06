<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
	<jsp:include page="../common/header.jsp" />
<html>
<head>
</head>
<body>
	<!-- 만약 아무것도 없다면 checked를 타이틀로 지정하기 위해서 if문을 작성한 것이다.  -->
	<c:set var="searchType" value="${param.searchType}" />
	<c:if test="${empty searchType }">
		<c:set var="searchType" value="${'title'}" />
	</c:if>
	<style>
.container1{
	width: 1200px;
	margin: 150px auto 100px auto;
}


</style>
	<div class="container1" >

		<div id="content">

			<!-- title view -->
			<div id="pageTitle">
				<h1>공지사항 목록</h1>
			</div>

			<!-- content view -->
			<div id="pageContent">

				<!-- 검색창 시작 -->
				<form action="${path}/board/list" method="get">
					<div style="text-align: center;">
						<label> <input type="radio" name="searchType"
							value="title" ${searchType=='title' ? 'checked':''}> 제목
						</label> <label> <input type="radio" name="searchType"
							value="content" ${searchType=='content' ? 'checked':''}>
							내용
						</label> <label> <input type="radio" name="searchType"
							value="writer" ${searchType=='writer' ? 'checked':''}>
							작성자
						</label> <span class="blue_window"> <input type="text"
							id="searchValue" name="searchValue" class="input_text"
							value="${param.searchValue}" />
						</span>
						<button type="submit" class="sch_smit">검색</button>
					</div>
				</form>
				<!-- 검색창 종료 -->

				<div id="improtant">총 조회 건수 ${ count }건</div>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
								<th scope="col">조회수</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>2024-07-30</td>
								<td>5</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>2024-06-15</td>
								<td>5</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>@twitter</td>
								<td>2024-05-15</td>
								<td>5</td>
							</tr>
						</tbody>
					</table>
					<button onclick="location.href='writeinfo'"
						style="float: right; width: 80px; background-color: #024C86; color: white;"">글작성</button>
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
