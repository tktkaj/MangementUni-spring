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
					<form action="#" method="POST">
						<select name="scholarship_type" required style="padding: 5px;">
							<option disabled selected>장학금 유형</option>
							<option value="100">최우수 장학금</option>
							<option value="50">우수 장학금</option>
							<option value="30">장려 장학금</option>
						</select>
					</form>

					<div id="selectSearch">
						<form action="#" method="POST">
							<select name="department" required style="padding: 5px;">
								<option value="" disabled selected>학과 선택</option>
								<option value="AI인공지능학과">AI인공지능학과</option>
								<option value="정보보호학과">정보보호학과</option>
								<option value="정보통신학과">정보통신학과</option>
								<option value="응용소프트웨어학과">응용소프트웨어학과</option>
								<option value="수학과">수학과</option>
								<option value="컴퓨터공학과">컴퓨터공학과</option>
								<option value="화학과">화학과</option>
								<option value="물리학과">물리학과</option>
							</select>
						</form>

						<form action="#" method="POST">
							<select name="grade" required style="padding: 5px;">
								<option value="" disabled selected>학년 선택</option>
								<option value="1">1학년</option>
								<option value="2">2학년</option>
								<option value="3">3학년</option>
								<option value="4">4학년</option>
							</select>
						</form>
					</div>
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
								<th scope="col">학년</th>
								<th scope="col">이름</th>
								<th scope="col">학기 평점</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-xs"
										id="toggleButton" name="approve" value="approve"
										style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">승인</button>
								</td>

							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-xs"
										id="toggleButton" name="approve" value="approve"
										style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">승인</button>
								</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>@twitter</td>
								<td>@twitter</td>
								<td>@twitter</td>
								<td>@twitter</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-xs"
										id="toggleButton" name="approve" value="approve"
										style="background-color: #024C86; color: white; padding: 2px 0 10px 0;">승인</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div> <!-- selectTable -->
			</div> <!-- pageContent -->
		</div> <!-- content -->
	</div><!-- container -->

	<script>
		document.addEventListener('DOMContentLoaded', (event) => {
	    const button = document.getElementById('toggleButton');

	    // 페이지 로드 시 상태 복원
	    const savedState = localStorage.getItem('buttonState');
	    if (savedState) {
	        button.innerText = savedState;
	        button.style.backgroundColor = savedState === '승인' ? '#024C86' : '#FF0000';
	    }

	    button.addEventListener('click', () => {
	        if (button.innerText === '승인') {
	            button.innerText = '취소';
	            button.style.backgroundColor = '#FF0000';
	            
	            // 승인 버튼 시 처리 실행
	            const queryParams = new URLSearchParams({ buttonText: button.innerText }).toString();
			    // location.href = `/scholarList?${queryParams}`;
				//location.href = "/management/scholarList";
	            
	            
	        } else {
	            button.innerText = '승인';
	            button.style.backgroundColor = '#024C86';
	            
	         // 취소 버튼 시 처리 실행
				
	        }

	        // 상태 저장
	        localStorage.setItem('buttonState', button.innerText);
	   		});
		});
		
	</script>
</body>
</html>
<jsp:include page="../common/footer.jsp" />