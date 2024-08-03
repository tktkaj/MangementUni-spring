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
<link href="${path}/resources/css/management.css" rel="stylesheet" />
</head>
<c:if test="${not empty message }">

	<script>
		alert('${message}');
	</script>
	<c:remove var=" message" />
</c:if>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menuBar">
			<ul id="menulist">
				<li><a href="passwordchange">사용자 정보 관리</a></li>
				<li><a href="studentstatus">학적 관리</a></li>
				<li><a href="studentinfo">등록 관리</a></li>
				<li><a href="objection">성적 관리</a></li>
				<li><a href="myCoursesPage">나의 수강 페이지</a></li>
				<li><a href="askpresident">총장님께 바랍니다</a></li>
				<li><a href="idcard">학생증</a></li>
			</ul>
		</div>
	</div>
	<div class="container" style="height: 500px;">

		<div id="content">

			<!-- title view -->
			<div id="pageTitle">
				<h1>등록관리</h1>
			</div>

			<!-- content view -->


			<div class="box">
					<c:forEach var="stuinfo" items="${studentInfo}">
				<div class="box_1">
				<div class="information_title">
					<Strong>&gt; </Strong><label><strong> 기본정보</strong></label>
					</div>
					<div style="background-color: #e3f8ff;">
						<div class="box_2">
							<div class="row">
								<div class="col-6">
									<span>학번</span><input type="text" placeholder="${ stuinfo.STU_NO}"
										readonly />
								</div>
								<div class="col-6">
									<span>학과</span><input type="text" placeholder="${ stuinfo.DEPT_NAME}" readonly />
								</div>
							</div>
							<div class="row">
								<div class="col-6">
									<span>이름</span><input type="text" placeholder="${ stuinfo.STU_NAME}" readonly />
								</div>
								<div class="col-6">
									<span>학적상태</span><input type="text" placeholder="더미데이터 생성후 추가" readonly />
								</div>
							</div>

							<div class="row">
								<div class="col-6">
									<span>전화번호</span><input type="text" placeholder="${ stuinfo.STU_PHONE}"
										readonly />
								</div>
								<div class="col-6">
									<span>학년</span><input type="text" placeholder="${ stuinfo.STU_GRADE}" readonly />
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="box_3">
				<div  class="information_title">
					<Strong>&gt; </Strong><label><Strong> 등록정보</Strong></label>
					</div>
					<div style="background-color: #e3f8ff">
						<div class="box_2">
							<div class="row">
								<div class="col-6">
									<span>가상계좌번호</span><input type="text" placeholder="${ stuinfo.STU_BK_NUM}"
										readonly />
								</div>
								<div class="col-6">
									<span>입학금</span><input type="text" placeholder="${ stuinfo.STU_ADMISSION}"
										readonly />
								</div>
							</div>
							<div class="row">
								<div class="col-6">
									<span>기타장학금액</span><input type="text" placeholder="${stuinfo.SCH_DISCOUNT} " readonly />
								</div>
								<div class="col-6">
									<span>입학날짜</span><input type="text" placeholder="${  stuinfo.STU_ADMISSION_DATE}"
										readonly />
								</div>
							</div>
						</div>

</c:forEach>
					</div>
				</div>
			</div>

			<!-- pageContent div -->
		</div>
		<!-- content div -->
	</div>
	<!-- container div -->

</body>
</html>
<jsp:include page="../common/footer.jsp" />
