//스크롤 이미지 클릭했을 때 스크롤이 자동으로 아래에서 위로 올라가는 함수
function scrollbtn(divId){

    document.getElementById(divId)
            .scrollIntoView({
                behavior:"smooth",//부드러운 스크롤 효과
                block:'start'
            });
}