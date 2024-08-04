$().ready(function () {
    console.log("hello");

    $(".opq-header").mouseover(function () {
        $(".opq-header").css("background", "white");
        $(".opq-header a").css("color", "black");
        $(".logo-img").attr("src", "resources/img/logo2.png");
    });

    // 대학 소개 마우스 올릴 시 slidedown 이벤트 발생
    $("#uni-detail").mouseover(function () {
        $(".opq-header-sub").slideDown(600);
        $(".opq-header").css("background", "white");
        $(".opq-header a").css("color", "black");
        $("#login-btn").css("color", "white");
    });

    // header 스크롤시 색 변경
    $(window).on('scroll', function () {
        let scrollPosition = $(window).scrollTop();

        if (scrollPosition > 0) {
            $('.opq-header').css('background-color', 'white');
            $(".opq-header a").css("color", "black");
            $(".logo-img").attr("src", "resources/img/logo2.png");
            $(".opq-header-sub").css("display", "none");
        } else {
            $('.opq-header').css('background-color', 'rgba(0, 0, 0, .2)');
            $(".opq-header a").css("color", "white");
            $(".logo-img").attr("src", "resources/img/logo.png");
        }
    });

    // header 벗어나면 헤더 효과 풀림
    let headerHeight = $('.opq-header').outerHeight();
    let subheaderHeight = $('.opq-header-sub').outerHeight();
    let totalHeaderHeight = headerHeight + subheaderHeight;

    $(document).on('mousemove', function(event) {
        // 마우스의 Y 좌표가 헤더와 서브헤더의 총 높이보다 클 경우 이벤트 발생
        if (event.clientY > totalHeaderHeight) {
            $('.opq-header').css('background-color', 'rgba(0, 0, 0, .2)');
            $(".opq-header a").css("color", "white");
            $(".logo-img").attr("src", "resources/img/logo.png");
            $(".opq-header-sub").css("display", "none");
        }
    });

});