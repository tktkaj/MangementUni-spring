<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path"
	value="${pageContext
	   		   .request
	   		   .contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- 나의 스타일 추가 -->
<link rel="stylesheet" href="${path}/resources/css/login.css"
	type="text/css">

<c:if test="${not empty msg }">

	<script>
		alert('${msg}');
	</script>
	<c:remove var=" msg" />
</c:if>
<section id="content">


	<!--  html 전체 영역을 지정하는 container -->
	<div id="container" style="height: 300px">
		<!--  login 폼 영역을 : loginBox -->
		<div id="loginBox" ">

			<!-- 로그인 페이지 타이틀 -->
			<div id="loginBoxTitle">학사관리 로그인</div>
			<!-- 아이디, 비번, 버튼 박스 -->
			<form action="MyCoursesPage" method="post">
				<div id="inputBox">
					<div class="input-form-box">
						<span>아이디 </span><input type="text" id="loginId" name="id"
							class="form-control">
					</div>
					<div class="input-form-box">
						<span>비밀번호 </span><input type="password" id="loginPassword"
							name="password" class="form-control"> 
					</div>
					<div>
						교직원 <input type='radio' name='login' value='Employee' />
						 학생<input	type='radio' name='login' value='Student' />
					</div>
						<button type="submit" class="btn btn-xs"
							style="width: 100%;background-color:  #024C86;color: white;">로그인</button>
			<div class="button-login-box">

				<button type="button" class="btn btn-xs"
					style="width: 100%; background-color:  #024C86;color: white;" onclick="location.href='findpassword'">비밀번호
					찾기</button>
			</div>
					</div>
			</form>

		</div>
	</div>
	</div>
</section>


<!-- Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />