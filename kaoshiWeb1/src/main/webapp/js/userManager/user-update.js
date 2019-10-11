$(function() {
	$("#toConfirm").click(function() {
		
		$("#toUpdateForm").attr("action",'updateUser');
		$("#toUpdateForm").submit;
	})
	
	$("#toReturn").click(function() {
		
		$("#toUpdateForm").attr("action",'queryUserInfoList');
		$("#toUpdateForm").submit;
		
	})
})