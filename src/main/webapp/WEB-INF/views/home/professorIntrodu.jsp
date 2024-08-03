<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>대학 소개</title>
    <link rel="stylesheet" href="introduce.css">
</head>
<body>
    <jsp:include page="../common/header.jsp" />

    <!-- Main Content -->
    <main>
        <div class="main-content">
            <div class="filters">
                <label for="professor-select"class="minititle">교수진</label>
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
            <div class="professor-grid">
                <!-- 교수 정보 카드 -->
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름1</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <!-- 필요한 만큼 교수 카드 추가 -->
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름2</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름3</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름4</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름5</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름6</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름7</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름8</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름9</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
                <div class="professor-card">
                    <div class="professor-photo"></div>
                    <div class="professor-info">
                        <h2>교수이름10</h2>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                        <div class="professor-details">
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                            <p>Eleanor Pena</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    
   
      
    
</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
