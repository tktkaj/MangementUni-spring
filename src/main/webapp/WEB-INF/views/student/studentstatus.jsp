<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학적 조회</title>
<link href="${path}/resources/css/studentinfo.css" rel="stylesheet" />
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
	<div id="sub-menuBar" style="height: 380px">
			<ul id="menulist">
				<li><a href="studentstatus">학적 조회</a></li>
				<li><a href="passwordchange">학생 비밀번호 변경</a></li>
				<li><a href="studentinformation">학생 정보 변경</a></li>
				<li><a href="objection">성적 조회</a></li>
				<li><a href="myCoursesPage">나의 수강 페이지</a></li>
				<li><a href="courseregistrationpage">수강신청 페이지</a></li>
				<li><a href="askpresident">총장님께 바랍니다</a></li>
				<li><a href="idcard">학생증</a></li>
			</ul>
		</div>
	</div>
	<div class="container" style="height: auto; margin-top: 100px;">

		<div id="content">

			<!-- title view -->
			<div id="pagetitle">
				<h1>학적 조회</h1>
			</div>

			<div id="contentview">

				<!--  학적 카드  -->
				<div id="statuscard">
					<div class="card">
						<div class="info">
							<div class="card-body">
								<table style="text-align: left;">
									<c:forEach var="stuinfo" items="${studentInfo}">
										<tr>
											<img src="${path}/resources/img/프로필사진.png" alt="student img" />
										</tr>
										<tr>
											<th>이름</th>
											<td>${stuinfo.STU_NAME}</td>
											<th>이메일</th>
											<td>${stuinfo.STU_EMAIL}</td>
											<th>생년월일</th>
											<td>${stuinfo.STU_JUMIN}</td>
										</tr>
										<tr>
											<th>학적 상태</th>
											<td>${status}</td>
											<th>연락처</th>
											<td>${stuinfo.STU_PHONE}</td>
											<th>입학일</th>
											<td>${stuinfo.STU_ADMISSION_DATE}</td>
										</tr>
										<tr>
											<th>소속 학과</th>
											<td>${stuinfo.DEPT_NAME}</td>
											<th>계좌번호</th>
											<td>${stuinfo.STU_BK_NUM}</td>
											<th>거주지</th>
											<td>${stuinfo.STU_ADDRESS}</td>
										</tr>
										<tr>
											<th>학번</th>
											<td>${stuinfo.STU_NO}</td>
											<th>등록금</th>
											<td>${stuinfo.TU_PRICE}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div id="courselist1">
					<h5 id="midtitle">&gt; 등록금 조회</h5>
					<div>
						<table class="table mt-2 mb-4">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">학년도</th>
									<th scope="col">학기</th>
									<th scope="col">학과</th>
									<th scope="col">등록금액</th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
							<c:forEach var="list" items="${tuitionlist}" varStatus="status">
								<tr>
									<th>${status.index + 1}</th>
									<td>${list.YEAR}</td>
									<td>${list.SMT}</td>
									<td>${list.DEPT_NAME}</td>
									<td>${list.TU_PRICE}</td>
								</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
				<div id="courselist1">
					<h5 id="midtitle">&gt; 장학금 수혜 조회</h5>
					<div>
						<table class="table mt-2 mb-4">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">학년도</th>
									<th scope="col">학기</th>
									<th scope="col">장학명</th>
									<th scope="col">면제금액</th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<tr>
									<th scope="row">1</th>
									<td>2024</td>
									<td>1</td>
									<td>@mdo</td>
									<td>@mdo</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>2024</td>
									<td>1</td>
									<td>@mdo</td>
									<td>@mdo</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div id="courselist1">
					<h5 id="midtitle">&gt; 수강 과목 조회</h5>
					<div>
						<table class="table mt-2 mb-4">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">학년도</th>
									<th scope="col">학기</th>
									<th scope="col">과목명</th>
									<th scope="col">담당교수</th>
									<th scope="col">출석률</th>
								</tr>
							</thead>
							<tbody class="table-group-divider">

								<tr>
									<th scope="row">1</th>
									<td>2024</td>
									<td>1</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>40%</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>2024</td>
									<td>1</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>40%</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- courselist1 -->

				<div id="courselist2">
					<h5 id="midtitle">&gt; 이전 수강 과목 조회</h5>
					<div>
						<table class="table mt-2 mb-4">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">학년도</th>
									<th scope="col">학기</th>
									<th scope="col">과목명</th>
									<th scope="col">담당교수</th>
									<th scope="col">출석률</th>
								</tr>
							</thead>
							<tbody class="table-group-divider">
								<tr>
									<th scope="row">1</th>
									<td>2023</td>
									<td>1</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>90%</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>2023</td>
									<td>2</td>
									<td>@mdo</td>
									<td>@mdo</td>
									<td>70%</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- courselist2 -->
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>