<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/view/header.jsp"%>
<%@ include file="/WEB-INF/view/taglibs.jsp"%>
<script type="text/javascript" src="js/userManager/user-update.js"></script>

</head>
<body>
	<!-- <div class="container"> -->
	<div  class="modal-dialog">
	<div class="modal-content" style="height:600px;width: 600px">
	
	<form  class="form-horizontal" method="post" id="toUpdateForm">
	<div class="modal-header">
			
				<h3>更新用户模态</h3>
	</div>
	<div class="modal-body">
        <div class="row">
	        <div class="col-md-6" >
				<div class="col-md-4" >
					<div class="form-group">
						<label for="userId">用户ID</label>
					</div>
				</div>
				<div class="col-md-8" >
					<div class="form-group">
						<input class="form-control" id="userId" name="userId" 
						value =${userEo.userId } type="text" placeholder="用户ID" ></input>
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
						<input class="form-control" id="userName" name="userName" value =${userEo.userName }  type="text"></input>
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
						<input class="form-control" id="userPassword" name="userPassword" value =${userEo.userPassword } type="text"></input>
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
						<c:if test="${userEo.sex=='1' }"> selected="selected" </c:if>
						>男</option>
						<option value="2"
						<c:if test="${userEo.sex=='2' }"> selected="selected" </c:if>
						>女</option>
						
					</select>
					
					<!-- <div class="btn-group dropdown" id="dropdown">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    性别 <span class="caret"></span>
						  </button>
						  <input type="hidden" name="sex" id="sex" value="性别" />
						  <ul class="dropdown-menu">
						  	<li><a href="#">男</a></li>
						    <li role="separator" class="divider"></li>
						    <li><a href="#">女</a></li>
						  </ul>
						</div> -->
						
					</div>
				</div>
			
			</div>
        </div>
		<div class="row">
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
		</div>
		<div class="modal-footer">
					<button class="btn btn-primary" type="submit" id="toConfirm"
						name="toConfirm">确认</button>
					<button class="btn btn-info" type="submit" id="toReturn"
						name="toReturn">返回</button>
		</div>

	</form>
	</div>
	</div>
	

</body>
</html>