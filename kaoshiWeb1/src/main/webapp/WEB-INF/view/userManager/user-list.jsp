<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<%@ include file="/WEB-INF/view/header.jsp"%>
<%@ include file="/WEB-INF/view/taglibs.jsp"%>
<script type="text/javascript" src="js/userManager/user-list.js"></script>
<script>
	$(function() {
		$("#checkAll").click(
				function() {
					$("input[name='checkName']:checkbox").prop("checked",this.checked);
				});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<c:if test="${msg=='001' }">
				<script type="text/javascript">
					alert("删除成功。");
				</script>

			</c:if>
		</div>
		<form class="form-horizontal" id="queryNameInfo" method="post">
			<div class="row">
				<div class="col-md-4">
					<div class="col-md-4">
						<div class="form-group">
							<label for="queryUserName">用户ID</label>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<input class="form-control" name="userId" id="userId" type="text"
								placehold="请输入用户ID" value="${userId }"></input>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="col-md-4">
						<div class="form-group">
							<label for="queryUserName">用户名</label>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<input class="form-control" name="userName" id="userName"
								type="text" placehold="请输入用户名" value="${userName }"></input>
						</div>
					</div>
				</div>
				<div class="col-md-4" align="right">
					<button class="btn btn-success" type="submit" id="queryId"
						name="queryId">查询</button>
					<button class="btn btn-primary" type="reset">重置</button>

				</div>
			</div>
			<div class="row">

				<div class="col-md-4">
					<button class="btn btn-primary" type="submit" id="toInsert"
						name="toInsert">增加</button>
					<button class="btn btn-info" type="submit" id="toUpdate1"
						name="toUpdate1">更新</button>
					<button class="btn btn-danger" type="submit" id="toDeleteBatch"
						name="toDeleteBatch">删除</button>

				</div>
			</div>
			<br>
			<div class="row">
				<table class="table table-bordered table-hover">
					<caption>用户基本信息</caption>
					<thread>
					
						<th><input type="checkbox" id="checkAll" /></th>
						<th>用户ID</th>
						<th>用户名</th>
						<th>密码</th>
						<th>操作</th>
					</thread>
					<tboby> 
					
					<c:if test="${!empty userList }">
						<c:forEach items="${userList }" var="userList" varStatus="i">
							<tr>
								<td><input type="checkbox" name="checkName"
									value="${userList.userId }"></input></td>
								<td>${userList.userId }</td>
								<td align="center">${userList.userName }</td>
								<td align="center">${userList.userPassword }</td>
								<td align="center"><a id="updateHref"
									href="javascripts:void(0)"
									onclick="toUpdate('${userList.userId }')">修改</a>&nbsp; <a
									href="javascripts:toDelete('${userList.userId }')">删除</a></td>
							</tr>
						</c:forEach>
					</c:if> </tboby>
				</table>
			</div>
		</form>
	</div>
	<form id="queryNameHide" method="post">
		<input name="nameHide" id="nameHide" value="" type="hidden"></input>
	</form>
</body>
</html>