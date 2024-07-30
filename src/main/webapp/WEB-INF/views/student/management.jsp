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
<link href="${path}/resources/css/management.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="menuBar">
		<div id="sub-menuBar">
			<ul id="menulist">
				<li><a href="#">사용자 정보 관리</a></li>
				<li><a href="#">학적 및 성적관리</a></li>
				<li><a href="#">등록관리</a></li>
				<li><a href="#">나의 수강 페이지</a></li>
				<li><a href="#">총장님께 바랍니다</a></li>
				<li><a href="#">시간표</a></li>
				<li><a href="#">학생증</a></li>
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
				<div class="box_1">
					<Strong>&gt; </Strong><label><strong> 기본정보</strong></label>
					<div style="background-color: #e3f8ff;">
						<div class="box_2">
							<div class="row">
								<div class="col-6">
									<span>학번</span><input type="text" placeholder="2015072"
										readonly />
								</div>
								<div class="col-6">
									<span>학과</span><input type="text" placeholder="컴퓨터공학" readonly />
								</div>
							</div>
							<div class="row">
								<div class="col-6">
									<span>이름</span><input type="text" placeholder="홍길동" readonly />
								</div>
								<div class="col-6">
									<span>학적상태</span><input type="text" placeholder="재학생" readonly />
								</div>
							</div>

							<div class="row">
								<div class="col-6">
									<span>전화번호</span><input type="text" placeholder="010-2482-6425"
										readonly />
								</div>
								<div class="col-6">
									<span>학년</span><input type="text" placeholder="4학년" readonly />
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="box_3">
					<Strong>&gt; </Strong><label><Strong> 등록정보</Strong></label>
					<div style="background-color: #e3f8ff">
						<div class="box_2">
							<div class="row">
								<div class="col-6">
									<span>가상계좌번호</span><input type="text" placeholder="1002-215-21"
										readonly />
								</div>
								<div class="col-6">
									<span>입학금</span><input type="text" placeholder="1,000,000원"
										readonly />
								</div>
							</div>
							<div class="row">
								<div class="col-6">
									<span>기타장학금액</span><input type="text" placeholder="" readonly />
								</div>
								<div class="col-6">
									<span>입학날짜</span><input type="text" placeholder="2000-03-03"
										readonly />
								</div>
							</div>
						</div>
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
