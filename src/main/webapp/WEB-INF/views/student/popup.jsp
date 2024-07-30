<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .popup {
            width: 850px;
            height: 400px;
            box-sizing: border-box;
            padding: 10px;
            border-color: #f04640;
        }

        .img {
            width: 100%;
            height: auto;
        }

        .btncontainer {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        .btnn {
            border: 1px solid #f04640;
            width: 120px;
            height: 35px;
            font-family: 'SUIT';
            font-style: normal;
            font-size: 12px;
            color: #000000;
            margin-right: 100px;
        }
        .h1 {
            color: red;
            font-size:  30px;
            justify-content: center;
        }
    </style>
</head>
<script>

    function closePopup() {
        if (document.getElementById("check").value) {

            self.close();
        }
    }
</script>

<body>
    <div class="popup">
        <div class="h1">전송하시면 내용을 취소하시거나 수정하실수 없습니다.</div>
        <div class="btncontainer">
            <input type="button" class="btnn" id="check" onclick=";" value="부탁드리기">
            <input type="button" class="btnn" onclick="self.close();" value="닫기">
        </div>
    </div>
</body>

</html>