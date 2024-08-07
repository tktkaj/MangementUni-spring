<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/css/scholarlist.css" rel="stylesheet" />
<title>장학금 관리</title>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menubar">
			<ul id="menulist">
				<li><a href="#">공지사항 관리</a></li>
				<li><a href="scholarlist">장학금 관리</a></li>
				<li><a href="objectionlist">성적 관리</a></li>
				<li><a href="calendar">학사 일정</a></li>
			</ul>
		</div>
	</div>
	<div class="container" style="height: 500px;">

		<div id="content">

			<div id="pagetitle">
				<h1>장학금 관리</h1>
			</div>

			<div id="pageContent">
				<div id="selectMenu">
					<form action="${path}/scholarlist" method="get">
						<select id="scholarship_type" name="scholarship_type" required
							style="padding: 5px;" onchange="this.form.submit()">
							<option value="" disabled selected>장학금 유형</option>
							<option value="0" ${scholarship_type == '0' ? 'selected' : ''}>전체</option>
							<option value="1" ${scholarship_type == '1' ? 'selected' : ''}>최우수
								장학금</option>
							<option value="2" ${scholarship_type == '2' ? 'selected' : ''}>우수
								장학금</option>
							<option value="3" ${scholarship_type == '3' ? 'selected' : ''}>장려
								장학금</option>
						</select> 

						<div id="selectSearch">
							<select name="department_type" required style="padding: 5px;"
								onchange="this.form.submit()">
								<option value="" disabled selected>학과 선택</option>
								<option value="deptall" ${department == 'deptall' ? 'selected' : ''}>전체</option>
								<option value="COMP" ${department == 'COMP' ? 'selected' : ''}>컴퓨터공학과</option>
								<option value="CHEM" ${department == 'CHEM' ? 'selected' : ''}>화학공학과</option>
								<option value="INSE" ${department == 'INSE' ? 'selected' : ''}>정보보호</option>
								<option value="MATH" ${department == 'MATH' ? 'selected' : ''}>수학과</option>
								<option value="APPL" ${department == 'APPL' ? 'selected' : ''}>응용소프트웨어학과</option>
								<option value="COMM" ${department == 'COMM' ? 'selected' : ''}>정보통신학과</option>
								<option value="AIIN" ${department == 'AIIN' ? 'selected' : ''}>AI인공지능과</option>
								<option value="PHYS" ${department == 'PHYS' ? 'selected' : ''}>물리학과</option>
							</select> <select name="grade" required style="padding: 5px;"
								onchange="this.form.submit()">
								<option value="" disabled selected>학년 선택</option>
								<option value="gradeall"${grade == '1gradeall' ? 'selected' : ''}>전체</option>
								<option value="1학년" ${grade == '1학년' ? 'selected' : ''}>1학년</option>
								<option value="2학년" ${grade == '2학년' ? 'selected' : ''}>2학년</option>
								<option value="3학년" ${grade == '3학년' ? 'selected' : ''}>3학년</option>
								<option value="4학년" ${grade == '4학년' ? 'selected' : ''}>4학년</option>
							</select>
						</div>
						<input type="hidden" id="hidden_scholarship_type"
							name="scholarship_type" ">
					</form>
				</div>
				<!-- selectmenu -->

				<div id="selectTable">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">학년도</th>
								<th scope="col">학기</th>
								<th scope="col">학과</th>
								<th scope="col">학번</th>
								<th scope="col">학년</th>
								<th scope="col">이름</th>
								<th scope="col">학기 평점</th>
								<th scope="col">장학금 유형</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<c:forEach var="list" items="${scholarList}" varStatus="status">
								<tr>
									<th>${status.index + 1}</th>
									<td>${list.YEAR}</td>
									<td>${list.SMT}</td>
									<td>${list.DEPT_NAME}</td>
									<td>${list.STU_NO}</td>
									<td>${list.STU_GRADE}</td>
									<td>${list.STU_NAME}</td>
									<td>${list.RESULTSAVG}</td>
									<td>${list.SCH_NAME}</td>
									<td>
										<button type="button" class="btn btn-xs" id="toggleButton"
											name="approve" value="approve"
											style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">승인</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- selectTable -->
			</div>
			<!-- pageContent -->
		</div>
		<!-- content -->
	</div>
	<!-- container -->

	<script>
		document.addEventListener('DOMContentLoaded', (event) => {
			// 장학금 유형 선택 시 hidden input에 값 설정
			document.getElementById('scholarship_type').addEventListener('change', function() {
				document.getElementById('hidden_scholarship_type').value = this.value;
				this.form.submit();
			});

			// 학과 선택 시 hidden input에 장학금 유형과 함께 전송
			document.getElementById('department').addEventListener('change', function() {
				document.getElementById('hidden_scholarship_type').value = document.getElementById('scholarship_type').value;
				this.form.submit();
			});
		});
	</script>
</body>
</html>
<jsp:include page="../common/footer.jsp" />
