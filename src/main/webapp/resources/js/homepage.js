$().ready(function(){
	console.log("hello");
	$(".opq-header").mouseover(function(){
		$(".opq-header").css("background","white");
		$(".opq-header a").css("color","black");
		$("#login-btn").css("color","white");
	});
	
	$("#uni-detail").mouseover(function(){
		$(".opq-header-sub").slideDown(600);
		$(".opq-header").css("background","white");
		$(".opq-header a").css("color","black");
		$("#login-btn").css("color","white");
	});
	
});