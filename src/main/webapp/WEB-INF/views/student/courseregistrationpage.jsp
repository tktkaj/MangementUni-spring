<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>수강 신청 페이지</title>
        <link rel="stylesheet" type="text/css" href="courses.css">
       
    </head>
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
    <div class="container2" id="content">
        
        <!-- title view -->
			<div id="pageTitle">
				<h1>수강 신청 페이지</h1>
				
			</div>
        <div class="summary">개설 과목 총: 6건</div>
        <div class="filters">
            <div class="filters-left">
                <select>
                    <option hidden>학과</option>
                    <option>컴퓨터공학</option>
                    <option>화학</option>
                    <option>정보보호</option>
                    <option>수학</option>
                    <option>물리학</option>
                    <option>정보통신</option>
                    <option>인공지능(AI)</option>
                    <option>응용소프트웨어</option>
                </select>
                <select>
                    <option hidden>학년</option>
                    <option>1학년</option>
                    <option>2학년</option>
                    <option>3학년</option>
                    <option>4학년</option>
                </select>
            </div>
            <div class="filters-right">
                <input type="text" placeholder="교과명 또는 코드 입력">
                <button class="검색">검색</button>
            </div>
        </div>
        <table class="table2">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>강좌명</th>
                    <th>교수명</th>
                    <th>인원제한</th>
                    <th>강의시간</th>
                    <th>학점</th>
                    <th>신청</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>영상문화론</td>
                    <td>김경형</td>
                    <td>30</td>
                    <td>목 18:50~20:20</td>
                    <td>3</td>
                    <td><button class="apply2">신청</button></td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
