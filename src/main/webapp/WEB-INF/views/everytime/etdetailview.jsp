<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판</title>

    <link href="${pageContext.request.contextPath}/resources/css/courses.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/everytime2.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/everytime3.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
       
    </style>
</head>

<body>
    <jsp:include page="../common/header.jsp" />
    <div id="menuBar">
        <div id="sub-menuBar" style="height: 150px;">
            <ul id="menulist">
                <li><a href="etmainpage">자유게시판</a></li>
                <li><a href="etmypage">내글 보기</a></li>
                <li><a href="everytimehot">HOT게시판</a></li>
            </ul>
        </div>
    </div>
    <div class="container" style="height: 1600px; margin-top: 100px; margin-left: 450px;">
        <div type="box" id="content" class="header2">
            <input type="text" id="Box" class="box" value="&nbsp;자유게시판" readonly>

            <div class="input-group">
                <input type="text" class="form-control1" value="정훈이의 모험" readonly>
            </div>

            <div class="horizontal-container">
                <div class="profile-section">
                    <img src="${pageContext.request.contextPath}/resources/img/프로필사진.png" class="프로필사진" alt="Profile Image">
                    <span class="username">ghdgns82</span>
                </div>
                <div class="stats-section">
                    <div class="stat-item">
                        <img src="${pageContext.request.contextPath}/resources/img/조회수.png" class="button-img" id="contentButton1">
                        <div class="counter" id="contentCounter1">0</div>
                    </div>
                    <div class="stat-item">
                        <img src="${pageContext.request.contextPath}/resources/img/추천버튼.png" class="button-img recommend-button" id="contentButton2">
                        <div class="counter" id="contentCounter2">0</div>
                    </div>
                </div>
            </div>
            <hr style="width: 1000px;">
        </div>
        <div class="container2" style="height: 800px; margin-bottom: 100px;">
            <div>
                <div class="input-group">
                    <textarea class="form-control2" rows="30" id="mainContent" readonly
                        style="overflow: hidden;">
어느 날, 하늘이 어두워지고 빗방울이 떨어지기 시작했다. 집 앞을 나서던 정훈은 이미 우산을 챙기지 않은 것을 깨달았다. 하지만 컴퓨터 학원에 늦을 수는 없었다. 정훈은 이를 악물고 빗속으로 뛰어들었다.
처음엔 작은 빗방울이었지만, 곧 폭우로 변했다. 정훈의 옷은 금세 젖었고, 신발 속으로 물이 스며들었다. 빗방울이 얼굴에 부딪힐 때마다 따끔한 고통이 느껴졌다. 길거리는 이미 물로 가득 차 있었다. 정훈은 물웅덩이를 피하려 했지만, 몇 번의 시도 끝에 포기했다. 결국 그는 그냥 물속을 걸어가기로 마음먹었다.
빗속에서의 첫 번째 도전은 바로 눈앞에 나타난 큰 개울이었다. 평소에는 작은 도랑이지만, 비가 오면 강처럼 변하는 곳이었다. 정훈은 두려움을 이겨내고 개울을 건너기로 결심했다. 신발을 벗어들고 발을 물에 담갔다. 차가운 물이 발을 감쌌지만, 그는 발을 떼지 않았다. 조심스럽게 한 걸음씩 내디디며 개울을 건넜다.
다음 도전은 바로 강한 바람이었다. 빗방울이 아니라 물줄기처럼 쏟아지는 비가 정훈의 앞을 막았다. 바람에 밀려 몇 번이나 균형을 잃었지만, 넘어지지 않기 위해 온 힘을 다해 버텼다. 정훈은 이렇게 자신을 시험하는 자연의 힘을 견뎌내며 계속 걸어갔다.
정훈은 잠시 발걸음을 멈추고 숨을 고르며 주위를 둘러보았다. 주위에는 아무도 보이지 않았다. 모든 사람들이 비를 피하기 위해 집 안에 머물러 있었기 때문이다. 그러나 정훈은 멈출 수 없었다. 그는 자신의 목표를 달성하기 위해 끝까지 가기로 결심했다.
길 끝에서 정훈은 마지막 도전에 직면했다. 학원 바로 앞에 있는 언덕길이었다. 평소에는 쉽게 오를 수 있는 길이었지만, 지금은 빗물로 인해 미끄러워진 상태였다. 정훈은 넘어지지 않도록 조심스럽게 한 걸음 한 걸음 올라갔다. 비가 계속해서 그의 시야를 가렸지만, 그는 포기하지 않았다.
마침내 정훈은 컴퓨터 학원에 도착했다. 젖은 옷과 신발을 탈탈 털며 문을 열었을 때, 따뜻한 공기가 그를 맞이했다. 정훈은 비록 몸은 젖었지만, 마음만은 뜨겁고 자랑스러웠다. 그는 자신이 해냈다는 성취감에 미소를 지었다. 그날 이후로 정훈은 어떤 어려움이 닥쳐도 두려워하지 않게 되었다. 비록 작은 모험이었지만, 그에게는 큰 교훈이자 소중한 경험이었다.
                    </textarea>
                </div>
                <hr style="width: 1000px;">
                <div id="commentsContainer">
                    <div class="comment">
                        <div class="horizontal-container">
                            <div class="profile-section">
                                <img src="${pageContext.request.contextPath}/resources/img/프로필사진.png" class="프로필사진" alt="Profile Image">
                                <span class="username">익명</span>
                            </div>
                            <div class="stats-section">
                                <div class="stat-item">
                                    <img src="${pageContext.request.contextPath}/resources/img/추천버튼.png" class="button-img recommend-button">
                                    <div class="counter">0</div>
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <input type="text" class="form-control3" value="정훈아 멋지다!!!"
                                readonly>
                        </div>
                        <hr style="width: 1000px;">
                    </div>

                    <div class="comment">
                        <div class="horizontal-container">
                            <div class="profile-section">
                                <img src="${pageContext.request.contextPath}/resources/img/프로필사진.png" class="프로필사진" alt="Profile Image">
                                <span class="username">김희망</span>
                            </div>
                            <div class="stats-section">
                                <div class="stat-item">
                                    <img src="${pageContext.request.contextPath}/resources/img/추천버튼.png" class="button-img recommend-button">
                                    <div class="counter">0</div>
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <input type="text" class="form-control3" value="정훈!!!!"
                                readonly>
                        </div>
                        <hr style="width: 1000px;">
                    </div>

                    <div class="form-controls-container">
                        <div class="file-upload-section">
                            <form>
                                <textarea id="commentInput" class="form-control" rows="3" cols="80"
                                    placeholder="댓글 작성" maxlength="100" style="width: 100%;"></textarea>
                            </form>
                        </div>

                        <div class="form-check d-inline">
                            <input class="form-check-input" style="font-weight: bolder;"
                                type="checkbox" value="" id="flexCheckDefault"> <label
                                class="form-check-label" style="font-weight: bolder;"
                                for="flexCheckDefault">익명</label>
                        </div>
                        <div class="d-flex align-items-center">
                            <button class="custom-submit-button" type="button"
                                id="postCommentButton">글 작성</button>
                        </div>
                    </div>
                    <div class="downbtn">
                        <button type="button" class="btn3">
                            <img src="${pageContext.request.contextPath}/resources/img/글목록.png" width="20" height="20">&nbsp;글 목록
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('postCommentButton').addEventListener('click', function () {
            const commentInput = document.getElementById('commentInput');
            const commentText = commentInput.value.trim();

            if (commentText !== '') {
                const commentContainer = document.createElement('div');
                commentContainer.classList.add('comment');

                const horizontalContainer = document.createElement('div');
                horizontalContainer.classList.add('horizontal-container');

                const profileSection = document.createElement('div');
                profileSection.classList.add('profile-section');

                const profileImage = document.createElement('img');
                profileImage.src = '${pageContext.request.contextPath}/resources/img/프로필사진.png';
                profileImage.classList.add('프로필사진');
                profileImage.alt = 'Profile Image';

                const usernameSpan = document.createElement('span');
                usernameSpan.classList.add('username');
                usernameSpan.textContent = document.getElementById('flexCheckDefault').checked ? '익명' : 'ghdgns82';

                profileSection.appendChild(profileImage);
                profileSection.appendChild(usernameSpan);

                const statsSection = document.createElement('div');
                statsSection.classList.add('stats-section');

                const statItem = document.createElement('div');
                statItem.classList.add('stat-item');

                const recommendButton = document.createElement('img');
                recommendButton.src = '${pageContext.request.contextPath}/resources/img/추천버튼.png';
                recommendButton.classList.add('button-img', 'recommend-button');

                const counterDiv = document.createElement('div');
                counterDiv.classList.add('counter');
                counterDiv.textContent = '0';

                statItem.appendChild(recommendButton);
                statItem.appendChild(counterDiv);
                statsSection.appendChild(statItem);

                horizontalContainer.appendChild(profileSection);
                horizontalContainer.appendChild(statsSection);

                const inputGroup = document.createElement('div');
                inputGroup.classList.add('input-group', 'mb-0');

                const commentBox = document.createElement('input');
                commentBox.type = 'text';
                commentBox.classList.add('form-control3');
                commentBox.value = commentText;
                commentBox.readOnly = true;

                inputGroup.appendChild(commentBox);

                commentContainer.appendChild(horizontalContainer);
                commentContainer.appendChild(inputGroup);

                const hr = document.createElement('hr');
                hr.style.width = '1000px';

                commentContainer.appendChild(hr);

                const commentsContainer = document.getElementById('commentsContainer');
                commentsContainer.insertBefore(commentContainer, commentsContainer.firstChild);

                commentInput.value = '';
                commentInput.placeholder = '댓글 작성';

                // 추천 버튼 기능 추가
                recommendButton.addEventListener('click', function () {
                    if (!recommendButton.classList.contains('clicked')) {
                        const counter = recommendButton.nextElementSibling;
                        counter.textContent = parseInt(counter.textContent) + 1;
                        recommendButton.classList.add('clicked');
                    }
                });
            }
        });

        document.querySelectorAll('.recommend-button').forEach(button => {
            button.addEventListener('click', function () {
                if (!button.classList.contains('clicked')) {
                    const counter = button.nextElementSibling;
                    counter.textContent = parseInt(counter.textContent) + 1;
                    button.classList.add('clicked');
                }
            });
        });

        // 자동 길이 조정을 위한 스크립트
        document.getElementById('mainContent').addEventListener('input', function () {
            this.style.height = 'auto';
            this.style.height = (this.scrollHeight) + 'px';
        });
    </script>
</body>

</html>
    <jsp:include page="../common/footer.jsp" />
