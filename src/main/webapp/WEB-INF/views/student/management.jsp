<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style type="text/css">
.row {
	padding: 5px;
}

.col-6 {
	text-align: left;
}

span {
	display: inline-block;
	width: 100px;
}

.box {
	height: 500px;
}

.box_1 {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

.box_2 {
	width:700px ;
	margin-left: auto;
	margin-right: auto;
}
</style>
<body>
	<div class="container">
		<div class="box">
			<div class="box_1">
				<div style="border-bottom: 1px solid black;">
					<h2>등록관리</h2>
				</div>
			
					<Strong>&gt; </Strong><label><strong> 기본정보</strong></label>
					<div style="background-color: #ede0dc;">
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
			
					<Strong>&gt; </Strong><label><Strong> 등록정보</Strong></label>
					<div style="background-color: #ede0dc">
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
</div>
</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />