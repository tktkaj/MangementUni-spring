<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>학과 소개</title>
        <link rel="stylesheet" href="introduce2.css">
    </head>

    <body>
        <jsp:include page="../common/header.jsp" />

        <!-- Spacer -->
        <div class="spacer"></div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="filters">
                <label for="professor-select" class="minititle">학부/학과</label>
                <select id="professor-select">
                    <option value="all">소속학과</option>
                    <option value="all">컴퓨터공학</option>
                    <option value="all">화학과</option>
                    <option value="all">정보보호학과</option>
                    <option value="all">수학과</option>
                    <option value="all">물리학과</option>
                    <option value="all">정보통신학과</option>
                    <option value="all">인공지능AI</option>
                    <option value="all">응용소프트웨어</option>
                </select>
            </div>
            <hr>
            <div class="professor-list">
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>ㅇㅇㅇㅇㅇㅇ과</h2>
                        <p>The principal alcohol in Purell hand sanitizer is 70% ethanol</p>
                    </div>
                </div>
            </div>
        </div>
        </main>


    </body>

    </html>
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />