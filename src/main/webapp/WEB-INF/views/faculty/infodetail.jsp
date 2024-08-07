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
    width: 100%; /* 테이블 너비를 100%로 설정 */
    max-width: 1000px; /* 최대 너비를 1200px로 설정 */
    margin: 0 auto; /* 가운데 정렬 */
    border-collapse: collapse; /* 테이블 셀 경계선 결합 */
}

#tbl-board th, #tbl-board td {
    padding: 15px; /* 셀 안의 패딩을 15px로 설정 */
    border: 1px solid #ddd; /* 셀 경계선 설정 */
    text-align: left; /* 텍스트 왼쪽 정렬 */
    font-size: 16px; /* 글자 크기 설정 */
    height: 50px; /* 셀의 높이를 50px로 설정 */
}

#tbl-board th {
    background-color: #f2f2f2; /* 머리글 배경색 설정 */
    font-weight: bold; /* 머리글 글자 굵게 설정 */
}

.button-group {
    text-align: center;
    margin-top: 10px;
}

.button-group button {
    font-size: 15px;
    padding: 15px 20px;
    margin: 5px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    background-color: #007bff;
    color: white;
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

    <div class="container" style="height: 1000px; margin-top: 100px;">
        <div id="content">
            <!-- title view -->
            <div id="pageTitle">
                <h1>공지사항 상세조회</h1>
            </div>
            <!-- content view -->
            <div id="pageContent">
                <table id="tbl-board">
                    <tr>
                        <th>글번호</th>
                        <td>${board.bo_no}</td>
                    </tr>
                    <tr>
                        <th>제 목</th>
                        <td><c:out value="${board.title}" /></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><c:out value="${board.emp_name}" /></td>
                    </tr>
                    <tr>
                        <th>조회수</th>
                        <td><c:out value="${board.readCount}" /></td>
                    </tr>
                    <tr>
                        <th>작성 시간</th>
                        <td><fmt:formatDate type="both" value="${board.create_date}" /></td>
                    </tr>
                    <tr>
                        <th>첨부파일</th>
                        <td>
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
                        <td><textarea rows="15" cols="90" readonly><c:out value="${board.content}" /></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            
                                <div class="button-group">
                                    <button type="button" id="btnUpdate">수정</button>
                                    <button type="button" id="btnDelete">삭제</button>
                                </div>
                           
                        </td>
                    </tr>
                </table>

                <!-- 리플 작성 Form -->
                <%-- <div id="comment-container">
                    <div class="comment-editor" align="center">
                        <form action="${path}/board/reply" method="post">
                            <input type="hidden" name="boardNo" value="${board.bo_no}" />
                            <input type="hidden" name="writerId" value="${loginMember.id}" />
                            <textarea name="content" id="replyContent" cols="55" rows="3"></textarea>
                            <button type="submit" id="btn-insert">등록</button>
                        </form>
                    </div>
                </div>

                <!-- 리플 출력 -->
                <table id="tbl-comment">
                    <c:if test="${!empty replyList}">
                        <c:forEach var="reply" items="${replyList}">
                            <tr>
                                <td><sub class="comment-writer">${reply.writerId}</sub>
                                    <sub class="comment-date"><fmt:formatDate type="both" value="${reply.createDate}" /></sub> <br>
                                    <c:out value="${reply.content}" />
                                </td>
                                <td><c:if test="${!empty loginMember && (loginMember.id == reply.writerId || loginMember.role == 'ROLE_ADMIN')}">
                                        <button class="btn-delete" onclick="deleteReply('${reply.no}','${board.bo_no}');">삭제</button>
                                    </c:if></td>
                            </tr>
                        </c:forEach>
                    </c:if>

                    <c:if test="${empty replyList}">
                        <tr>
                            <td colspan="3" style="text-align: center;">등록된 리플이 없습니다.</td>
                        </tr>
                    </c:if>
                </table> --%>

            </div>
            <!-- pageContent div -->
        </div>
        <!-- content div -->
    </div>
    <!-- container div -->

    <jsp:include page="../common/footer.jsp" />
</body>
</html>
