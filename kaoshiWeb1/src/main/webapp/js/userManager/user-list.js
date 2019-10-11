$(function() {
	$("#queryId").click(function() {
		var userName = $("#userName").val();
		alert("userName:"+userName);
		$("#queryNameInfo").attr("action",'queryUserInfoList');
		$("#queryNameInfo").submit;
		
		/*$.ajax({
			async:true,
        	cache:false,
			type:"post",
			dataType:"text",
			data:{
				userName:$.trim($("#userName").val())
			},
			url:"queryUserInfoListAjax",
			success:function(msg){
				alert(msg);
				 var json = JSON.parse(msg);
				 for(var i = 0; i < json.userList.length; i++){
					 window.alert("用户名:"+json.userList[i].userName);
				}
				 
			}
		})*/		
	})
	
	$("#toInsert").click(function() {
		$("#nameHide").attr("value",$("#nameHide").val());
		alert("nameHide:"+$("#nameHide").val());
		$("#queryNameInfo").attr("action",'insertUserPage');
		$("#queryNameInfo").submit;
	})
	
	$("#toUpdate1").click(function() {
		var $checkInfo = $("input[name='checkName']:checkbox:checked");
		if ($checkInfo.length==0){
			alert('请选择一条记录进行更新');
			return;
		}
		$("#queryNameInfo").attr("action",'updateUserPage');
		$("#queryNameInfo").submit;
		
	})
	$("#toDeleteBatch").click(function() {
		var $checkInfo = $("input[name='checkName']:checkbox:checked");
		if ($checkInfo.length==0){
			alert('请选择一条记录进行删除');
			return;
		}
		if(confirm('确认要删除所有数据吗？')){
			alert("delete query userName::"+$("#userName").val());
			$("#userName").attr("value",$("#userName").val());
			$("#queryNameInfo").attr("action",'deleteUserBatch');
			$("#queryNameInfo").submit;
		}
	})

})

function toUpdate(userId) {
	$("#updateHref").attr('href','updateUserPage?userId='+userId);
	//$("#updateHref").submit;
}