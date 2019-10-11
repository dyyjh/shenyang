$(function(){
	$("#btn").click(function () {
		var userid = $("#userid").val();
		$("#loginForm").attr("action", 'login');
		$("#loginForm").submit;
	})
})


