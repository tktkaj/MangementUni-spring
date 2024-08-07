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
<style>
#sub-menubar {
	margin-left: 50px;
	background-color: #024C86;
	margin-top: 110px;
	width: 200px;
	height: 150px;
	float: left;
}

#menulist {
	text-decoration: none;
	list-style: none;
	font-weight: bold;
	align-items: center;
	margin-top: 10px;
}

#menulist a {
	text-decoration: none;
	color: white;
}

#menulist a:hover {
	border-bottom: 1px solid;
	border-bottom-color: white;
}

#menulist li {
	margin: 20px 0px;
}

.container1 {
	width: 1200px;
	margin: 150px auto 100px auto;
}

.sch_smit {
	border: none;
	border-radius: 5px;
	background-color: #024C86;
	color: white;
	padding: 5px 10px 5px 10px;
}

a {
	text-decoration: none;
	color: black;
}
</style>
<title>공지사항</title>
</head>
<body>
	<!-- 만약 아무것도 없다면 checked를 타이틀로 지정하기 위해서 if문을 작성한 것이다.  -->
	<c:set var="searchType" value="${param.searchType}" />
	<c:if test="${empty searchType }">
		<c:set var="searchType" value="${'title'}" />
	</c:if>

	<!-- 없는 게시글을 상세 페이지로 이동하기 위해 클릭할 때, alert창 띄우기 위해 코드 작성 -->
	<c:if test="${not empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var=" msg" />
	</c:if>

	<c:if test="${login == 'Employee'}">
		<div id="menuBar">
			<div id="sub-menubar">
				<ul id="menulist">
					<li><a href="infoboard">공지사항 관리</a></li>
					<li><a href="scholarlist">장학금 관리</a></li>
					<li><a href="objectionlist">성적 관리</a></li>
				</ul>
			</div>
		</div>
	</c:if>


	<div class="container1">

		<div id="content">

			<!-- title view -->
			<div id="pageTitle">
				<h1>공지사항 목록</h1>
			</div>

			<!-- content view -->
			<div id="pageContent">

				<!-- 검색창 시작 -->
				<form action="${path}/board/infoboard" method="get">
					<div style="text-align: center;">
						<label> <input type="radio" name="searchType"
							value="title" ${searchType=='title' ? 'checked':''}> 제목</label> 
						<label> <input type="radio" name="searchType"
							value="writer" ${searchType=='content' ? 'checked':''}>
							작성자
						</label> <span class="blue_window"> 
						<input type="text"
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
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
								<th scope="col">조회수</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">

							<c:if test="${empty boardList}">
								<tr>
									<td colspan="6">조회된 글이 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${not empty boardList}">
								<c:forEach var="board" items="${boardList}">
									<tr>
										<td><c:out value="${board.bo_no}" /></td>
										<td><a href="${path}/infodetail?bo_no=${board.bo_no}">
												<c:out value="${board.title}" />
										</a></td>
										<td><c:out value="${board.emp_name}" /></td>
										<td><fmt:formatDate type="date"
												value="${board.create_date}" /></td>
										<td><c:out value="${board.readCount}" /></td>
									</tr>
								</c:forEach>
							</c:if>

						</tbody>
					</table>
					<c:if test="${login == 'Employee'}">
						<button onclick="location.href='writeinfo'"
							style="float: right; width: 80px; background-color: #024C86; color: white; border: none; padding: 5px; border-radius: 10px">글작성</button>
					</c:if>

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
