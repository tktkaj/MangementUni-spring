<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오시는 길</title>
    
    <link href="${path}/resources/css/come.css" rel="stylesheet"/>
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div class="container">
        <div id="map" class="map">지도 로드 중...</div>
        <div class="info">
            <div class="address">
                <div class="left-address">
                    <p>주소 | 서울 서초구 서초대로 74길 45, 엔데버 빌딩 3층</p>
                </div>
                <div class="right-address">
                    <p>대표전화 | 02-2088-8408</p>
                </div>
            </div>
            <div class="stations">
                <div class="left">
                    <h3>버스 이용시(강남역 하차)</h3>
                    <p><span class="line blue">144</span> <span class="line blue">145</span> <span class="line blue">3008</span></p>
                    <p>
                        <span class="line red">1006</span> 
                        <span class="line red">1241</span> 
                        <span class="line red">3000</span> 
                        <span class="line red">3002</span> 
                        <span class="line red">3007</span> 
                        <span class="line red">9700</span> 
                        <span class="line red">9711</span>
                    </p>
                    <p><span class="line orange">9004</span></p>
                    <p><span class="line green">4312</span> <span class="line green">서초03</span> <span class="line green">서초09</span></p>
                </div>
                <div class="right">
                    <h3>지하철 이용시</h3>
                    <p><span class="line line-sinbundang">신분당선</span> 강남역 5번출구 4분거리</p>
                    <p><span class="line line-sinbundang">신분당선</span> 강남역 6번출구 6분거리</p>
                    <p><span class="line line-3">3호선</span> 양재역 2번출구 18분거리</p>
                    <p><span class="line line-2">2호선</span> 강남역 7번출구 7분거리</p>
                </div>
            </div>
        </div>
    </div>
   
</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
