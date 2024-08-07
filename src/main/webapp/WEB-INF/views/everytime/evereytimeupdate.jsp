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
    <title>everytimemain</title>

    <link href="${pageContext.request.contextPath}/resources/css/courses.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/everytime2.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

   
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
	<div class="container" style="height: 1000px; margin-top:100px;">
        <div id="content">
            <input type="text" id="Box" class="box" value="&nbsp;글 수정">

            <div class="input-group mb-0">
                <input type="text" class="form-control1" placeholder="&nbsp;&nbsp;글 수정"
                    aria-label="Recipient's username" aria-describedby="button-addon2">
            </div>

            <div class="input-group mb-0">
                <input type="text" class="form-control2" placeholder="&nbsp;&nbsp;수정수정수정수정크리스탈"
                    aria-label="Recipient's username" aria-describedby="button-addon2">
            </div>

            <div class="form-controls-container">
                <div class="file-upload-section">
                    <form>
                        <label for="file-upload" class="file-upload-button">
                            <span>첨부파일</span>
                            <input type="file" id="file-upload" name="file-upload" onchange="updateFilePath()">
                        </label>
                    </form>
                    <span id="file-path" class="file-upload-path">첨부된 파일이 없습니다</span>
                </div>

                <div class="form-check d-inline" style="margin-left:600px;">
                    <input class="form-check-input" style="font-weight: bolder;" type="checkbox" value=""
                        id="flexCheckDefault">
                    <label class="form-check-label" style="font-weight: bolder;" for="flexCheckDefault">익명</label>
                </div>
                <div class="d-flex align-items-center">
                    <button class="custom-submit-button" type="button" id="button-addon2">글작성</button>
                </div>
            </div>
            <div class="btn-container">
                <button type="button" class="btn1 center-delete">글 삭제</button>
                <button type="button" class="btn1">◀뒤로가기</button>
            </div>
        </div>
    </div>

    <script>
        function updateFilePath() {
            const fileInput = document.getElementById('file-upload');
            const filePath = document.getElementById('file-path');
            if (fileInput.files.length > 0) {
                filePath.textContent = fileInput.files[0].name;
            } else {
                filePath.textContent = '첨부된 파일이 없습니다';
            }
        }
    </script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>
<jsp:include page="../common/footer.jsp" />