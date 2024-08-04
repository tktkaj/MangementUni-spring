<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script defer src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script defer src="${path}/resources/js/homepage.js"></script>
    <link href="${path}/resources/css/main.css" rel="stylesheet"/>
    <link href="${path}/resources/css/home.css?힣" rel="stylesheet"/>

</head>
<div class="header">
    <div class="opq-header">
        <div class="container">
            <div class="menu">
                <div class="row">
                    <c:if test="${loginname == null}">
                    <div class="col col-11">
                        <ul>
                            <li class="uni-detail"><a href="#" style="color: white">대학소개</a></li>
                            <li><a href="infoboard" style="color: white">공지사항</a></li>
                            <li><a href="etmainpage" style="color: white">에타게시판</a></li>
                        </ul>
                    </div>
                    <div class="col col-1">
                        <button id="login-btn" onclick="location.href='login'" style="color: white">LOGIN</button>
                        </c:if>

                        <c:if test="${loginname != null}">

                        <div class="col col-11">
                            <ul>
                                <li class="uni-detail"><a href="#">대학소개</a></li>
                                <li><a href="infoboard">공지사항</a></li>
                                <li><a href="etmainpage">에타게시판</a></li>
                                <li><a href="myCoursesPage">마이페이지</a></li>
                            </ul>
                        </div>
                        <div class="col col-1">
                            <button id="login-btn" onclick="location.href='logout'" style="color: white">LOGOUT</button>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="opq-header-sub">
            <div class="container">
                <div class="menu">
                    <div class="row">
                        <div class="col col-12">
                            <ul>
                                <li><a href="#">오시는길</a></li>
                                <li><a href="ideology">학교이념</a></li>
                                <li><a href="professor">교수진 소개</a></li>
                                <li><a href="department">학과 소개</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</html>
