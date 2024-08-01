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
    <title>Everytime</title>


  
    <link rel="stylesheet" href="main.css">
    <link href="courses.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        .sub {
            color: red;
        }

        .input-group-text {
            background-color: #f8f9fa;
            border-color: black;
        }

        .form-control {
            border-color: black;
        }

        .custom {
            max-width: 1100px;
            margin: 0 auto;
            text-align: center;
        }

        .btn-wide {
            width: 30%;
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

        .list-group-item-small {
            font-size: 0.8rem;
            padding: 0.25rem 0.5rem;
            border-bottom: none;
            border-top: none;
        }

        .list-group-item-small2 {
            font-size: 2rem;
            padding: 0.75rem 1.25rem;
            font-weight: bolder;
        }

        .list-group-item-medium {
            background-color: rgb(2, 76, 134);
            font-size: 2rem;
            padding: 0.25rem 0.5rem;
            font-weight: bolder;
            color: #ffffff;
        }

        .list-group-item-large {
            font-size: 3rem;
            padding: 0.75rem 1.25rem;
            border-bottom: none;
        }

        .list-group-item+.list-group-item {
            border-top: none;
            /* 상단 보더 제거 */
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
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            width: 300px;
            text-align: center;
            display: block;
            margin: 20px auto;
            /* 가운데 정렬 */
        }

        .dropdown-container {
            display: flex;
            justify-content: flex-end;
            /* 왼쪽 정렬 */
            margin-bottom: 50px;
            /* 자유게시판과 거리 벌리기 */
        }

        .dropdown-container .input-group {
            width: 33%;
            /* 3분의 1로 줄이기 */
        }
    </style>
</head>

<body>
    <link rel="import" href="topheader.html">
    <div id="menuBar">
        <div id="sub-menuBar">
            <ul id="menulist">
                <li><a href="passwordchange">자유게시판</a></li>
                <li><a href="#">내글 보기</a></li>
                <li><a href="management">HOT게시판</a></li>
            </ul>
        </div>
    </div>
    <div class="container" style="height: 600px;">
        <div id="content">
            <!-- title view -->
            <div class="list-group">
                <div class="dropdown-container">
                    <div class="input-group mb-5">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button"
                            data-bs-toggle="dropdown" aria-expanded="true">제목</button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">제목</a></li>
                            <li><a class="dropdown-item" href="#">내용</a></li>
                            <li><a class="dropdown-item" href="#">작성자</a></li>
                        </ul>
                        <input type="text" class="form-control" aria-label=검색어를입력하시오>
                    </div>
                </div>
                <a class="list-group-item list-group-item-action list-group-item-medium disabled"
                    aria-disabled="true">자유게시판</a>
            </div>

            <div class="input-group mb-0" style="margin-top: 20px;">
                <input type="text" class="form-control" placeholder="새 게시글을 작성해주세요" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">글작성</button>
            </div>

            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action list-group-item-large"
                    aria-current="true">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던것내용이었던
                    것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="25" height="25">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action list-group-item-large"
                    aria-current="true">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던것내용이었던
                    것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="25" height="25">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action list-group-item-large"
                    aria-current="true">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던것내용이었던
                    것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="25" height="25">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action list-group-item-large"
                    aria-current="true">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="25" height="25">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action list-group-item-large"
                    aria-current="true">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="25" height="25">
                        <div style=" padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <button type="button" class="btn1">▼&nbsp;더보기</button>
        </div>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>

<jsp:include page="/Everytime/footer.jsp" />