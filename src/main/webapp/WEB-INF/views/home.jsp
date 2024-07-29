<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="common/header.jsp"/>
<main class="container news">
    <h1 align="center">미르 Today</h1>
    <div class="row">
        <div class="col col-8">
            <div class="row main-news">
                <div class="col col-12">
                    <img class="top" src="${path}/resources/img/newimg1.jpg" alt="newsimg1" width="100%"/>
                    <div class="article main-article">
                        <h4>제 6회 노벨 경제학상 수상자 토만스 존 사전트 박사 특강</h4>
                        <p>코페르니쿠스에서 ChtGPT까지, 인공지능의 근원은?</p>
                        <div class="readmore">
                            <a href="">read more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row sub-menu">
                <div class="col col-6 sub1">
                    <div class="article sub-article1 top">
                        <h4>"졸업 전에 재학생 신분으로 의미 있는 일을 해보고 싶었다."</h4>
                        <div class="readmore">
                            <a href="">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col col-6 sub2">
                    <div class="article sub-article2 top">
                        <h3><a href="">미르 소식 더보기&nbsp;<img src="${path}/resources/img/more.png"/></a></h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="col col-4">
            <div class="row sub-news">
                <div class="col col-12">
                    <img class="top" src="${path}/resources/img/subnews1.jpg" alt="newsimg1" width="100%"/>
                    <div class="article main-article">
                        <h4>그레이스 카오(Grace Kao)예일대 교수 특별강연 성료</h4>
                        <p>'선미-팝'이라고 하는 현상이 어떻게 비전형적인 아이돌의 커리어 모델을 만들 수 있었는가</p>
                        <div class="readmore">
                            <a href="">read more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col col-12">
                    <img class="top" src="${path}/resources/img/subnews2.jpg" alt="newsimg1" width="100%"/>
                    <div class="article main-article">
                        <h4>2024 Yale-Korea University Forum 개최</h4>
                        <p>"기후변화로 인한 재난에 대응하고 지속가능한 미래를 위한 에너지-물 기후기술 혁신"를 주제로 열려</p>
                        <div class="readmore">
                            <a href="">read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="common/footer.jsp"/>


</body>
</html>
