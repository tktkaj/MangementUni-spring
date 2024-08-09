<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="ko">
<link href="${path}/resources/css/video.css" rel="stylesheet" />
<head>
<meta charset="UTF-8">
<title>강의 플레이어</title>
<style>
</style>
</head>

<body>

	<div class="player-container">
		<div class="header">
			<img src="logo2.png" alt="로고">
			<source src="${path}/resources/img/logo2.png" type="img/png">
			<div class="header-title">
				<h1>강의 제목</h1>
				<h2>소제목</h2>
			</div>
		</div>
		<div class="content-section">
			<div class="video-section">
				<video id="videoPlayer" class="video-player" controls>
					<source src="${path}/resources/video/1교시.mp4" type="video/mp4">
					
				</video>
			</div>
			<div class="controls-section">
				<div class="info-box">
					<h3>목차</h3>
					<p data-time="0">목차 1: 소개</p>
					<p data-time="60">목차 2: 주요 개념</p>
					<p data-time="120">목차 3: 예제 1</p>
					<p data-time="180">목차 4: 예제 2</p>
					<p data-time="240">목차 5: 결론</p>
					<p data-time="300">목차 6: 질문과 답변</p>
				</div>
				<button class="button" id="saveProgress">진도저장 후 학습종료</button>
			</div>
		</div>
		<div class="footer-container">
			<select class="dropdown">
				<option value="1교시.mp4">1교시</option>
				<option value="2교시.mp4">2교시</option>
				<option value="3교시.mp4">3교시</option>
			</select>
			<div class="footer-right">
				<button class="button" id="moveButton"
					style=" width: 100px; height: 43px;">이동</button>
			</div>
		</div>
	</div>

	<script>
                                document.addEventListener("DOMContentLoaded", function () {
                                    const videoPlayer = document.getElementById('videoPlayer');
                                    const saveProgressButton = document.getElementById('saveProgress');
                                    const moveButton = document.getElementById('moveButton');
                                    const dropdown = document.querySelector('.dropdown');
                                    const indexItems = document.querySelectorAll('.info-box p');

                                    // 드롭박스에서 선택한 비디오로 변경
                                    moveButton.addEventListener('click', function () {
                                        const selectedVideo = dropdown.value;
                                        videoPlayer.src = selectedVideo;
                                        videoPlayer.play();
                                    });

                                    // 목차 클릭 시 해당 시간으로 이동
                                    indexItems.forEach(item => {
                                        item.addEventListener('click', function () {
                                            const time = this.getAttribute('data-time');
                                            videoPlayer.currentTime = time;
                                            videoPlayer.play();
                                        });
                                    });
                                });
                                
                                
                                
                                
                            </script>

</body>

</html>