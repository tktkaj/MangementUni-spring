
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>강의 페이지</title>
    <link rel="stylesheet" href="${path}/resources/css/video.css">
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <header>
        <div class="header-container">
            <div class="logo">미르대학교</div>
            <div class="header-title">[기초] 비전공자를 위한 정보처리기사 프로그래밍 언어 특강</div>
            <div class="header-right">
                <span>고객센터 | 오류 제보/제안</span>
            </div>
        </div>
    </header>
    <main>
        <div class="content-container">
            <section class="video-section">
                <div class="video-wrapper">
                    <video controls>
                        <source src="1교시.mp4" type="video/mp4">
                       
                    </video>
                </div>
            </section>
            <aside class="sidebar">
                <div class="sidebar-header">목차</div>
                <ul>
                    <li>변수</li>
                    <li>데이터 유형</li>
                    <li>Boolean</li>
                    <li>변수의 종류</li>
                    <li>변수 이름</li>
                </ul>
            </aside>
        </div>
    </main>
    <footer>
        <div class="footer-container">
            <span>강의노트</span>
            <span>필살기노트</span>
            <span>메모장</span>
            <span>커리큘럼 안내</span>
            <span>선생님께 질문</span>
        </div>
    </footer>
</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>