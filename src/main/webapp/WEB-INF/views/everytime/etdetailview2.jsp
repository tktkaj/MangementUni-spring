
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ìì ê²ìí</title>
    <link rel="stylesheet" href="everytime.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            <input type="text" id="Box" class="box" value="&nbsp;ìì ê²ìí" readonly>
            <div class="input-group mb-0">
                <input type="text" class="form-control1" value="ì¡¸ë¦½ë¤" readonly>
            </div>
            <div class="horizontal-container">
                <div class="profile-section">
                    <img src="íë¡íì¬ì§.png" class="íë¡íì¬ì§" alt="Profile Image">
                    <span class="username">ghdgns82</span>
                </div>
                <div class="stats-section">
                    <div class="stat-item">
                        <img src="ì¡°íì.png" class="button-img" id="contentButton1">
                        <div class="counter" id="contentCounter1">0</div>
                    </div>
                    <div class="stat-item">
                        <img src="ì¶ì²ë²í¼.png" class="button-img" id="contentButton2">
                        <div class="counter" id="contentCounter2">0</div>
                    </div>
                </div>
            </div>
            <hr style="width: 1000px;">
        </div>
    </div>
    <div class="detailchang">
        <div class="input-group mb-0">
            <input type="text" class="form-control2" value="ì íì ì¡¸ë ¤ì£½ê²ë¤" readonly>
        </div>
        <hr style="width: 1000px;">
        <div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="íë¡íì¬ì§.png" class="íë¡íì¬ì§" alt="Profile Image">
                        <span class="username">ì ì ì±</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="ì¶ì²ë²í¼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="ì íì ì¡¸ë ¤ì£½ê²ë¤ ëì¢ì´ë ¤ì¤" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="íë¡íì¬ì§.png" class="íë¡íì¬ì§" alt="Profile Image">
                        <span class="username">ê¸°ë¯¼ê²½</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="ì¶ì²ë²í¼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="ì íì ì¡¸ë ¤ì£½ê²ë¤ ëì¢ì´ë ¤ì¤" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
            <div class="comment">
                <div class="horizontal-container">
                    <div class="profile-section">
                        <img src="íë¡íì¬ì§.png" class="íë¡íì¬ì§" alt="Profile Image">
                        <span class="username">ê¹í¬ë§</span>
                    </div>
                    <div class="stats-section">
                        <div class="stat-item">
                            <img src="ì¶ì²ë²í¼.png" class="button-img" id="contentButton2">
                            <div class="counter" id="contentCounter2">0</div>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-0">
                    <input type="text" class="form-control3" value="ì íì ì¡¸ë ¤ì£½ê²ë¤ ëì¢ì´ë ¤ì¤" readonly>
                </div>
                <hr style="width: 1000px;">
            </div>
        </div>
        <div class="form-controls-container">
            <div class="file-upload-section">
                <form>
                </form>
                <span id="file-path" class="file-upload-path">ë¡ê·¸ì¸ í´ì£¼ì¸ì</span>
            </div>
            <div class="d-flex align-items-center">
                <button class="custom-submit-button" type="button" id="loginButton">ë¡ê·¸ì¸</button>
            </div>
        </div>
        <div class="downbtn">
            <button type="button" class="btn3"><img src="ê¸ëª©ë¡.png" width="20" height="20">&nbsp;ê¸ ëª©ë¡</button>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
        // ë¡ê·¸ì¸ ìí ê´ë¦¬
        let loggedIn = false;

        // ë¡ê·¸ì¸ ë²í¼ í´ë¦­ ì´ë²¤í¸ í¸ë¤ë¬
        document.getElementById('loginButton').addEventListener('click', function () {
            loggedIn = true;
            updateUI();
        });

        // UI ìë°ì´í¸ í¨ì
        function updateUI() {
            if (loggedIn) {
                document.getElementById('file-path').textContent = 'ëê¸ì ìì±íì¸ì';
                enableCommentFields();
            }
        }

        // ëê¸ ìì± íë íì±í í¨ì
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
