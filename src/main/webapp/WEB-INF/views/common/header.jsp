<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link href="${path}/resources/css/main.css?힛" rel="stylesheet"/>
    <link href="${path}/resources/css/home.css?야소" rel="stylesheet"/>
    <script defer src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script defer src="${path}/resources/js/homepage.js"></script>

</head>
<header>
    <div class="container">
        <div class="row">
            <div class="col col-3">
                <a href="/management"><img src="${path}/resources/img/logo.png" width="100" height="100"></a>
            </div>
            <div class="col col-9 login-col">
            	<c:if test="${loginname == null}">
                <button id="login" onclick="location.href='login'">LOGIN</button>
                </c:if>
             <c:if test="${loginname != null}">
         			    <label>${loginname }님 환영</label><button  id="logout">로그아웃</button>
                </c:if>   
             
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
                            <li><a href="#">교수진 소개</a></li>
                            <li><a href="#">학과 소개</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</html>