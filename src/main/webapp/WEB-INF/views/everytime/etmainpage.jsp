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
    <title>everytimemain</title>
    <link rel="stylesheet" href="everytime.css">
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
                <li><a href="ethot">HOT게시판</a></li>
            </ul>
        </div>
    </div>
    <div class="container" style="height: 500px;">
        <div id="content">
            <div class="list-group">
                <div class="dropdown-container">
                    <div class="dropdown">
                        <button class="dropbtn">제목&nbsp;&nbsp;▼</button>
                        <div class="dropdown-content">
                        <%-- 제욱씨 밑에 a태그는 무엇이죠???????--%>
                            <a href="#">제목</a>			
                            <a href="#">작성자</a>
                            <a href="#">내용</a>
                        </div>
                    </div>
                    <input type="text" id="searchBox" class="search-box" value="검색어를 입력해주세요"
                        onfocus="clearPlaceholder()" onblur="setPlaceholder()">
                </div>
                <input type="text" id="Box" class="box" value="&nbsp;자유게시판">
            </div>
            <div class="input-group mb-0" style="margin-top: 5px;">
                <input type="text" class="form-control" placeholder="새 게시글을 작성해주세요" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="location.href='etnew'">글작성</button>
            </div>
            <div class="list-group">
                <a href="etdetailview" class="list-group-item list-group-item-action list-group-item-large" aria-current="true"
                    style="margin-top: 5px;">제목이었던 것</a>
                <a href="#"
                    class="list-group-item list-group-item-action list-group-item-small disabled">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내용이었던
                    것 내용이었던 것 내용이었던 것 내용이었던 것</a>
                <a href="#" class="list-group-item list-group-item-action list-group-item-small2 disabled">
                    <div style="display: flex; align-items: center;">
                        <div style="padding: 1px; margin-right: 5px; font-size: 15px;">1초전</div>
                        <img src="msg.png" width="15" height="15">
                        <div style="padding: 1px; margin-right: 5px; font-size: 15px;">20</div>
                    </div>
                </a>
            </div>
            <button type="button" class="btn1">▼&nbsp;더보기</button>
        </div>
    </div>
    <script>
        function clearPlaceholder() {
            var searchBox = document.getElementById('searchBox');
            if (searchBox.value === '검색어를 입력해주세요') {
                searchBox.value = '';
                searchBox.style.color = 'black';
            }
        }

        function setPlaceholder() {
            var searchBox = document.getElementById('searchBox');
            if (searchBox.value === '') {
                searchBox.value = '검색어를 입력해주세요';
                searchBox.style.color = 'grey';
            }
        }
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <jsp:include page="../common/footer.jsp" />
</body>

</html>