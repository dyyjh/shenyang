<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加用户</title>
<%@ include file="/WEB-INF/view/header.jsp"%>
<%@ include file="/WEB-INF/view/taglibs.jsp"%>
<script type="text/javascript" src="js/userManager/user-add.js"></script>



</head>
<body>

<div class="modal-dialog">
<div class="modal-content" style="height:600px;width: 600px">
	
	<form  class="form-horizontal" method="post" id="toInsertForm" >
	
	<div class="modal-header">
			
				<h3>添加用户模态</h3>
	</div>
	
	<div class="modal-body">
        <div class="row">
	        <div class="col-md-6" >
				<div class="col-sm-4" >
					<div class="form-group">
						<label for="userId">用户ID</label>
					</div>
				</div>
				<div class="col-sm-8" >
					<div class="form-group">
						<input class="form-control" placeholder="用户ID"  id="userId" name="userId" 
						value =${userId }  ></input>
					</div>
				</div>
			</div>
			<div class="col-md-6" >
				<div class="col-sm-2" >
					<div class="form-group">
						<label for="userName">用户名</label>
					</div>
				</div>
				<div class="col-sm-6" >
					<div class="form-group">
						<input type="text" placeholder="请输入用户名"  class="form-control" id="userName" name="userName" value =${userName } 
						></input>
					</div>
				</div>
				<div class="col-sm-4 tips"><span>* </span>必填</div>
				
			
			</div>
        	
        </div>
        <div class="row">
        	<div class="col-md-6" >
				<div class="col-md-4" >
					<div class="form-group">
						<label for="userPassword">用户密码</label>
					</div>
				</div>
				<div class="col-md-8" >
					<div class="form-group">
						<input placeholder="请输入密码" class="form-control" id="userPassword" name="userPassword" value =${userPassword }
						></input>
					</div>
				</div>
			</div>
		
			<div class="col-md-6" >
				<div class="col-md-2" >
					<div class="form-group">
						<label for="sex">性别</label>
					</div>
				</div>
				<div class="col-md-6" >
					<div class="form-group">
					<select class="form-control">
						<option value="1" 
						>男</option>
						<option value="2"
						>女</option>
						
					</select>
					</div>
				</div>
			
			</div>
        </div>
  </div>
 <div class="modal-footer">
					<button class="btn btn-primary" type="submit" id="toConfirm"
						name="toConfirm">确认</button>
					<button class="btn btn-info" type="submit" id="toReturn" data-dismiss="modal"
						name="toReturn">返回</button>
				
		</div> 
		
		
		<!-- <div class="modal-footer">
				<button class="btn btn-primary" type="submit">保存</button>
				<button class="btn btn-info" data-dismiss="modal">关闭</button>
			</div>
 -->
	</form>
	</div>
</div> 

<!--模态框-->
	<!-- <div class="modal-dialog">
		<div class="modal-content">
		  <form class="form-horizontal" autocomplete="off" action="0.php">
			<div class="modal-header">
				<button class="close" data-dismiss="modal">x</button>
				<h3>添加管理员</h3>
			</div>
			<div class="modal-body">
				<div class="form-group">
				    <label for="name" class="col-sm-2 control-label">用户名</label>
				    <div class="col-sm-6">
				    	<input type="text" class="form-control" id="name" placeholder="6~16位字母、数字、下划线组合">
				    </div>
				    <div class="col-sm-4 tips"><span>* </span>必填</div>
				</div>
				<div class="form-group">
				    <label for="mobile" class="col-sm-2 control-label">手机号码</label>
				    <div class="col-sm-6">
				    	<input type="text" class="form-control" id="mobile" placeholder="输入11位手机号码" >
				    </div>
				    <div class="col-sm-4 tips"><span>* </span>必填</div>
				</div>
				<div class="form-group">
				    <label for="email" class="col-sm-2 control-label">E-mail</label>
				    <div class="col-sm-6">
				    	<input type="text" class="form-control" id="email" placeholder="请输入邮箱" >
				    </div>
				    <div class="col-sm-4 tips"></div>
				</div>
				<div class="form-group">
				    <label for="email" class="col-sm-2 control-label">所属角色</label>	
				    <div class="col-sm-6">	
				    	Single button
						<select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
						<div class="btn-group dropdown" id="dropdown">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    超级管理员 <span class="caret"></span>
						  </button>
						  <input type="hidden" name="hidedrop_1" id="hidedrop_1" value="超级管理员" />
						  <ul class="dropdown-menu">
						    <li><a href="#">超级管理员</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">设计总监</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">运维人员</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">发布人员</a></li>
						  </ul>
						</div>
						
				    </div>
				    <div class="col-sm-4 tips"></div>
				</div>
				<div class="form-group">
				    <label for="regtime2" class="col-sm-2 control-label">注册日期</label>
				    <div class="col-sm-8 input-group" id="regtime2">
				    	<input type="text" class="form-control" placeholder="YYYY-MM-DD" >
				    	<span class="input-group-addon">
			                <span class="glyphicon glyphicon-calendar"></span>
			            </span>
				    </div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-primary" type="submit">保存</button>
				<button class="btn btn-info" data-dismiss="modal">关闭</button>
			</div>
		  	
		  </form>
		</div>
	</div>
 -->

<%-- <form id="insertUser" method="post">
		<br> <br> <br>
		<table width="70%">
		<tr>
			<th width="80%"><div align="right">用户ID:</div></th>
			<td width="16%">
			 <input name="userId" id="userId" type="text" value=${userId }></input> 
			</td>
			<th width="40%"><div align="right">密码:</div></th>
			<td width="16%">
		 		<input name="userPassword" id="userPassword" type="text" value=${userPassword }></input>
			</td>
		</tr>
		
		<tr>
			<th width="40%"><div align="right">用户名:</div></th>
			<td width="16%">
			 <input name="userName" id="userName" type="text" value=${userName }></input> 
			</td>
			<th width="40%"><div align="right">性别:</div></th>
			<td width="16%">
		 		<select name="sex" id="sex">
			 <option value=""></option>
			 <option value="1">男</option>
			 <option value="2">女</option>
		 		</select>
			</td>
		</tr>
		
		</table>
		<br> <br> <br>
		<div align="center">
		<input type="submit" id="save" name="save" value="保存" align="middle"></input>
		</div>
		<input name = "nameHide" id = "nameHide" value="${nameHide }" type="hidden"></input>
		
</form>
		 --%>
</body>
<script type="text/javascript">
	$(function(){
		window.top.parent.dropdownFun();
		//函数dropdownFun()为官方文档中的$(‘#dropdown’).on('show.bs.dropdown', function(){ ··· ··· })
	});
</script>
</html>