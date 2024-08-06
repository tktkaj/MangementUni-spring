<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비밀번호 변경</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">
<style>
.sub {
    color: red;
}

.form-control {
    border-color: black;
}

.input-background {
    width: 600px;
    margin: 0 auto;
}

.pageContent {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.custom {
    max-width: 900px;
    margin: 0 auto;
    text-align: center;
}

.btn-wide {
    width: 30%;
}

.custom-button {
    background-color: rgb(2, 76, 134);
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    width: 300px;
}

.containerpass {
    height: 100%;
    margin-top: 50px;
   
}

header, footer {
    padding: 20px 0;
}

#menuBar {
    margin-bottom: 20px;
}
</style>
</head>

<body>
    <header>
        <jsp:include page="../common/header.jsp" />
    </header>
    
    <div id="menuBar">
        <div id="sub-menuBar">
            <ul id="menulist">
                <li><a href="studentstatus">학적 조회</a></li>
                <li><a href="passwordchange">학생 정보 변경</a></li>
                <li><a href="objection">성적 조회</a></li>
                <li><a href="myCoursesPage">나의 수강 페이지</a></li>
                <li><a href="askpresident">총장님께 바랍니다</a></li>
                <li><a href="idcard">학생증</a></li>
            </ul>
        </div>
    </div>
    
    <div class="containerpass">
        <div id="content">
            <!-- title view -->
            <div id="pageTitle">
                <h1>학생 정보 변경</h1>
            </div>
            <div id="pageContent">
                <!-- content view -->
                <div class="input-background">
                    <div class="container text-center">
                        <div class="row row-cols-1">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;사용자명&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;학과명&nbsp;&nbsp;&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;전화번호&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;이전PW&nbsp;&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">변경할PW</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">&nbsp;PW확인&nbsp;&nbsp;</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center mt-4">
                        <button type="button" class="button btn-wide custom-button">암호변경</button>
                    </div>
                </div>
            </div>
           
        </div>
    </div>

    <footer>
        <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    </footer>
</body>

</html>
