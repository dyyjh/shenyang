$(function() {
	$("#toConfirm").click(function() {
		$("#toInsertForm").attr("action",'insertUser');
		$("#toInsertForm").submit;
	})
	$("#toReturn").click(function() {
		$("#toInsertForm").attr("action",'queryUserInfoList');
		$("#toInsertForm").submit;
	})
})