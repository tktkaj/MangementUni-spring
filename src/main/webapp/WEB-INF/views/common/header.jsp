<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link href="${path}/resources/css/main.css" rel="stylesheet"/>
    <script defer src="${path}/resources/js/jQuery-3.7.1min.jsmain.js"></script>
</head>
<header>
    <div class="container">
        <div class="row">
            <div class="col col-3"><img src="${path}/resources/img/logo.png" width="100" height="100"></div>
            <div class="col col-9 login-col">
                <button id="login">LOGIN</button>
            </div>
        </div>
    </div>
    <div class="menu">
        <div class="container">
            <div class="row">
                <div class="col col-3">
                    <ul>
                        <li><a href="#">대학소개</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">에타게시판</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
</html>