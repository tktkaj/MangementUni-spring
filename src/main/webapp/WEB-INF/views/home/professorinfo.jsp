<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학 소개</title>
    <link href="${path}/resources/css/professor.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<!-- Main Content -->
<main>
    <div class="main-content">
        <div class="filters">
            <label for="professor-select" class="minititle">교수진</label>
            <form action="professor" method="get">
                <select name="department" id="professor-select"
                        onchange="this.form.submit()">
                    <option value="COMP"  ${department=='COMP'? 'selected' :''}>컴퓨터공학과</option>
                    <option value="CHEM" ${department =='CHEM'? 'selected' :''}>화학공학과</option>
                    <option value="INSE" ${department =='INSE'? 'selected' :''}>정보보호</option>
                    <option value="MATH" ${department =='MATH'? 'selected' :''}>수학과</option>
                    <option value="APPL" ${department =='APPL'? 'selected' :''}>응용소프트웨어학과</option>
                    <option value="COMM" ${department =='COMM'? 'selected' :''} >정보통신학과</option>
                    <option value="AIIN" ${department =='AIIN'? 'selected' :''} >AI인공지능과</option>
                    <option value="PHYS" ${department =='PHYS'? 'selected' :''}>물리학과</option>
                </select>
            </form>
        </div>
        <hr>
        <div class="professor-grid">
            <!-- 교수 정보 카드 -->
            <c:forEach var="prolist" items="${list}">
                <div class="professor-card">
                    <div class="professor-photo"><img src="${path}/resources/img/${prolist.PROF_IMG}"/></div>
                    <div class="professor-info">
                        <h2>${prolist.PROF_NAME}</h2>
                        <div class="professor-details">
                            <p>부서명</p>
                            <p>${prolist.DEPT_NAME}</p>
                            <p>담당과목명</p>
                            <p>${prolist.SUB_NAME}</p>
                        </div>
                        <div class="professor-details">
                            <p>이메일</p>
                            <p>${prolist.PROF_EMAIL}</p>
                            <p>전화번호</p>
                            <p>${prolist.PROF_PHONE}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</main>


</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
