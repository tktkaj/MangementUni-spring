<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<link href="${path}/resources/css/objection.css" rel="stylesheet" />
<link href="${path}/resources/css/infodetail.css" rel="stylesheet" />

<style>
#tbl-board {
    width: 100%; 
    max-width: 1000px; 
    margin: 0 auto; 
    border-collapse: collapse; 
}

#tbl-board th, #tbl-board td {
    padding: 15px; 
    border: 1px solid #ddd; 
    text-align: left; 
    font-size: 16px; 
    height: 50px; 
}

#tbl-board th {
    background-color: #f2f2f2; 
    font-weight: bold; 
}

#tbl-board input[type="text"], #tbl-board textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
}

#tbl-board textarea {
    resize: none;
}

.button-group {
    display: flex;
    justify-content: space-between;
    margin: auto;
}

.button-group button {
    font-size: 18px;
    padding: 10px 38px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    background-color: #024C86;
    color: white;
    margin: auto;
}

.button-group button:last-child {
    margin-right: 0;
}

.button-group button:hover {
    opacity: 0.8;
}
</style>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <c:set var="searchType" value="${param.searchType}" />
    <c:if test="${empty searchType}">
        <c:set var="searchType" value="title" />
    </c:if>

    <div id="menuBar">
        <div id="sub-menubar" style="height: 150px;">
            <ul id="menulist">
                <li><a href="infoboard">공지사항 관리</a></li>
                <li><a href="scholarlist">장학금 관리</a></li>
                <li><a href="objectionlist">성적 관리</a></li>
            </ul>
        </div>
    </div>

    <div class="container" style="height: 700px; margin-top: 100px;">
        <div id="content">
            <div id="pageTitle">
                <h1>공지사항 글 작성</h1>
            </div>
            <div id="pageContent">
                <form id="boardForm" action="${path}/board/save" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="bo_no" value="${board.bo_no}" />
                    <table id="tbl-board">
                        <tr>
                            <th>제 목</th>
                            <td><input type="text" name="title" value="${board.title}" /></td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td><input type="text" name="emp_name" value="${board.emp_name}" /></td>
                        </tr>
                        <tr>
                            <th>첨부파일</th>
                            <td>
                                <input type="file" name="uploadFile" />
                                <c:if test="${!empty board.originalFilename}">
                                    <a href="javascript:fileDownload('${board.originalFilename}', '${board.originalFilename}')">
                                        <img src="${path}/resources/images/file.png" width="20" height="20" />
                                        <c:out value="${board.originalFilename}"></c:out>
                                    </a>
                                    <script>
                                        function fileDownload(oriname, rename) {
                                            const url = "${path}/board/fileDown";
                                            let oName = encodeURIComponent(oriname);
                                            let rName = encodeURIComponent(rename);
                                            location.assign(url + "?oriname=" + oName + "&rename=" + rName);
                                        }
                                    </script>
                                </c:if> 
                                <c:if test="${empty board.originalFilename}">
                                    <span> - </span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>내 용</th>
                            <td><textarea name="content" rows="15">${board.content}</textarea></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div class="button-group">
                                    <button type="button" onclick="handleRegister()">등록</button>
                                    <button type="button" onclick="handleRewrite()">다시쓰기</button>
                                    <button type="button" onclick="handleCancel()">취소</button>
                                </div>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />

    <script>
      

        function handleRewrite() {
            document.getElementById('boardForm').reset();
        }

     
    </script>

	
</body>
</html>
