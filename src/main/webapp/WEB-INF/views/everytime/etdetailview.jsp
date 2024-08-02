<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판</title>

    <link rel="stylesheet" href="main.css">
    <link href="courses.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        .menuBar {
            height: 100px;
        }

        .input-group-text {
            background-color: #f8f9fa;
            border-color: black;
        }

        .form-control {
            width: 750px;
        }

        .custom {
            max-width: 1100px;
            margin: 0 auto;
            text-align: center;
        }

        .custom-button {
            background-color: rgb(2, 76, 134);
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 300px;
        }

        .custom-container {
            max-width: 900px;
        }

        h1 {
            width: 700px;
        }

        .list-group {
            border: 4px;
            border-color: black;
            border-left: none;
            border-right: none;
        }

        .btn1 {
            background-color: rgb(2, 76, 134);
            color: #ffffff;
            border: none;

            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            width: 90px;
            height: 40px;
            text-align: center;
            display: block;
            margin: 10px auto;
            margin-left: 30px;
        }

        .btn2 {
            background-color: rgb(2, 76, 134);
            color: #ffffff;
            border: none;
            padding: 5px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 120px;
        }

        .btn3 {
            background-color: rgb(2, 76, 134);
            color: #ffffff;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            width: 90px;
            height: 40px;
            text-align: center;
            display: block;

        }

        .box {
            background-color: rgb(2, 76, 134);
            color: white;
            border: none;
            width: 1000px;
            height: 80px;
            font-size: 40px;
            font-weight: bold;
            pointer-events: none;
        }

        .form-control1,
        .form-control2,
        .form-control3 {
            border: none;
            background-color: #ffffff;
            pointer-events: none;
        }

        .form-control1 {
            height: 80px;
            width: 1000px;
            font-size: 20px;
        }

        .form-control2 {
            height: 600px;
            width: 1000px;
            font-size: 20px;
        }

        .form-control3 {
            height: 100px;
            width: 1000px;
            font-size: 15px;
            border-top: none;

        }

        .file-upload-button,
        .custom-submit-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #ffffff;
            background-color: rgb(2, 76, 134);
            border: 1px solid rgb(2, 76, 134);
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            user-select: none;
            margin-right: 10px;
        }

        .file-upload-button:hover,
        .custom-submit-button:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .file-upload-button input[type="file"] {
            display: none;
        }

        .file-upload-path {
            display: inline-block;
            vertical-align: middle;
            color: #333;
            font-size: 14px;
            margin-left: 10px;
        }

        .form-controls-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            background-color: #c9c9c9;
            border-top: none;
            width: 1000px;
        }

        .form-controls-container .file-upload-section {
            display: flex;
            align-items: center;
            width: 80%;
        }

        .form-controls-container .form-check {
            margin-left: 20px;
        }

        .form-controls-container .btn {
            margin-left: 20px;
        }

        .form-check-input {
            width: 20px;
            height: 20px;
            border: 2px solid rgb(2, 76, 134);
            background-color: #fff;
        }

        .form-check-input:checked {
            background-color: rgb(2, 76, 134);
            border-color: rgb(2, 76, 134);
        }

        .form-check-label {
            font-weight: bold;
            font-size: 18px;
        }

        .downbtn {
            display: flex;
            align-items: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .horizontal-container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding-top: 10px;
        }

        .profile-section {
            display: flex;
            align-items: center;
            margin-right: 20px;
        }

        .profile-section .프로필사진 {
            margin-right: 10px;
        }

        .stats-section {
            display: flex;
            align-items: center;
        }

        .stat-item {
            display: flex;
            align-items: center;
            margin-left: 20px;
        }

        .button-img {
            width: 30px;
            height: 30px;
            cursor: pointer;
            margin-right: 5px;
        }

        .button-img.clicked {
            cursor: not-allowed;
            opacity: 0.5;
        }

        .counter {
            font-size: 16px;
        }

        .프로필사진 {
            width: 40px;
            height: 40px;
        }

        .detailchang {
            margin-left: 400px;
            height: 100vh;
            
        }

        .container {
            margin-right: 240px;
        }

        .header2 {
            padding-bottom: 11px;
        }
    </style>
</head>

<body>
<jsp:include page="../common/header.jsp" />
    <div id="menuBar">
        <div id="sub-menuBar" style="height: 150px;">
            <ul id="menulist">
                <li><a href="etmainpage">자유게시판</a></li>
                <li><a href="etmypage">내글 보기</a></li>
                <li><a href="ethot">HOT게시판</a></li>
            </ul>
        </div>
    </div>

    <div class="container">
        <div type="box" id="content" class="header2">
            <input type="text" id="Box" class="box" value="&nbsp;자유게시판" readonly>

            <div class="input-group mb-0">
                <input type="text" class="form-control1" value="졸립다" readonly>
            </div>

            <div class="horizontal-container">
                <div class="profile-section">
                    <img src="프로필사진.png" class="프로필사진" alt="Profile Image">
                    <span class="username">ghdgns82</span>
                </div>
                <div class="stats-section">
                    <div class="stat-item">
                        <img src="조회수.png" class="button-img" id="contentButton1">
                        <div class="counter" id="contentCounter1">0</div>
                    </div>
                    <div class="stat-item">
                        <img src="추천버튼.png" class="button-img recommend-button" id="contentButton2">
                        <div class="counter" id="contentCounter2">0</div>
                    </div>
                </div>
            </div>
            <hr style="width: 1000px;">
        </div>
    </div>
    <div class="detailchang">
        <div class="input-group mb-0">
            <input type="text" class="form-control2" value="정훈아 졸려죽겄다" readonly>
        </div>
        <hr style="width: 1000px;">
        <div id="commentsContainer">
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="프로필사진.png" class="프로필사진" alt="Profile Image">
                        <span class="username">익명</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="추천버튼.png" class="button-img recommend-button">
                            <div class="counter">0</div>
                        </div>
                    </div>
                </div>

                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="정훈아 졸려죽겄다 나좀살려줘" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="프로필사진.png" class="프로필사진" alt="Profile Image">
                        <span class="username">기민경</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="추천버튼.png" class="button-img recommend-button">
                            <div class="counter">0</div>
                        </div>
                    </div>
                </div>

                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="정훈아 졸려죽겄다 나좀살려줘" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="프로필사진.png" class="프로필사진" alt="Profile Image">
                        <span class="username">김희망</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="추천버튼.png" class="button-img recommend-button">
                            <div class="counter">0</div>
                        </div>
                    </div>
                </div>

                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="정훈아 졸려죽겄다 나좀살려줘" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
        </div>
        
        <div class="form-controls-container">
            <div class="file-upload-section">
                <form>
                    <textarea id="commentInput" class="form-control" rows="1" placeholder="댓글 작성"></textarea>
                </form>
            </div>

            <div class="form-check d-inline">
                <input class="form-check-input" style="font-weight: bolder;" type="checkbox" value=""
                    id="flexCheckDefault">
                <label class="form-check-label" style="font-weight: bolder;" for="flexCheckDefault">익명</label>
            </div>
            <div class="d-flex align-items-center">
                <button class="custom-submit-button" type="button" id="postCommentButton">글 작성</button>
            </div>
        </div>
        <div class="downbtn">
            <button type="button" class="btn3"><img src="글목록.png" width="20" height="20">&nbsp;글 목록</button>
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
                profileImage.src = '프로필사진.png';
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
                recommendButton.src = '추천버튼.png';
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
    </script>
    <jsp:include page="../common/footer.jsp" />
</body>

</html>
