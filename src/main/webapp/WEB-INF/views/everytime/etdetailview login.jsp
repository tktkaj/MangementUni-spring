
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판</title>
    <link rel="stylesheet" href="everytime.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../common/header.jsp" />
    <div id="menuBar">
        <div id="sub-menuBar" style="height: 150px;">
            <ul id="menulist">
                <li><a href="passwordchange">자유게시판</a></li>
                <li><a href="#">내글 보기</a></li>
                <li><a href="management">HOT게시판</a></li>
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
                        <img src="추천버튼.png" class="button-img" id="contentButton2">
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
        <div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="프로필사진.png" class="프로필사진" alt="Profile Image">
                        <span class="username">유제욱</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="추천버튼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
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
                            <img src="추천버튼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
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
                            <img src="추천버튼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
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
                </form>
                <span id="file-path" class="file-upload-path">로그인 해주세요</span>
            </div>
            <div class="d-flex align-items-center">
                <button class="custom-submit-button" type="button" id="loginButton">로그인</button>
            </div>
        </div>
        <div class="downbtn">
            <button type="button" class="btn3"><img src="글목록.png" width="20" height="20">&nbsp;글 목록</button>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
        // 로그인 상태 관리
        let loggedIn = false;

        // 로그인 버튼 클릭 이벤트 핸들러
        document.getElementById('loginButton').addEventListener('click', function () {
            loggedIn = true;
            updateUI();
        });

        // UI 업데이트 함수
        function updateUI() {
            if (loggedIn) {
                document.getElementById('file-path').textContent = '댓글을 작성하세요';
                enableCommentFields();
            }
        }

        // 댓글 작성 필드 활성화 함수
        function enableCommentFields() {
            const commentFields = document.querySelectorAll('.form-control3');
            commentFields.forEach(field => {
                field.removeAttribute('readonly');
                field.style.pointerEvents = 'auto';
            });
        }
    </script>
    <jsp:include page="../common/footer.jsp" />
</body>
</html>
