<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        h1 {
            color: black;
            /* 제목 색상 */
        }

        .sub {
            color: red;
            /* 내용 색상 */
        }

        hr {
            border: 1px solid #000;

        }

        .input-group-text {
            background-color: #f8f9fa;

            border-color: black;

        }

        .form-control {
            border-color: black;

        }

        .input-background {
            background-color: rgba(128, 128, 128, 0.253);

            padding: 20px;

            border-radius: 10px;

        }

        .custom-container {
            max-width: 800px;

        }
    </style>
</head>

<body>

    

    <div>
        <div>
            <div class="container custom-container">
                <h1 class="mt-4">비밀번호 변경</h1>
                <hr>
                <div class="input-background">
                    <div class="container text-center">
                        <div class="row row-cols-1">

                            <div class="input-group mb-3">
                                <span class="input-group-text"
                                    id="basic-addon1">ID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">사용자명:&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">학과명:&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">이메일:&nbsp&nbsp&nbsp&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">전화번호:&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">이전PW:&nbsp&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">변경할PW:</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon1">PW확인:&nbsp&nbsp&nbsp</span>
                                <input type="text" class="form-control" aria-describedby="basic-addon1">
                            </div>

                        </div>
                    </div>
                    <div class="d-flex justify-content-center mt-4">
                        <button type="button" class="btn btn-primary">암호변경</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>