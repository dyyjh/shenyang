<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试B/S系统</title>
<%@  include file="/WEB-INF/view/taglibs.jsp"%>
<!-- 引入Bootstrap核心样式文件 -->
<link type="text/css"
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript" src="js/common/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/login/login.js"></script>
<script type="text/javascript">
	 function login() {
		$("#loginForm").attr("action", 'login');
		$("#loginForm").submit;
	} 
</script>
</head>
<body style="text-align: center;">
	<div class="container">
		<c:choose>
			<c:when test="${tipMessage =='error.001'}">
				<div class="row">
					<div class="alert alert-danger col-md-3 col-md-offset-3">用户和密码不能为空</div>
				</div>
			</c:when>
			<c:when test="${tipMessage =='error.002'}">
				<font color="red">用户为空</font>
			</c:when>
			<c:when test="${tipMessage =='error.003'}">
				<font color="red">用户或者密码不正确</font>
			</c:when>
		</c:choose>
		<form class="form-horizontal " role="form" method="post"
			id="loginForm">
			<div class="row">
				<div class="col-md-3 col-md-offset-3">
					<h3>登录</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-3">
					<div class="form-group">
						<input class="form-control" placeholder="请输入用户名"
							antofocus="antofocus" id="userid" type="text" name="userid"
							value="${userid}"></input>
					</div>
					<div class="form-group">
						<input class="form-control" placeholder="请输入密码" id="userPass"
							type="password" name="userPass" value="${userPass}"></input>
					</div>
					<div class="form-group">
						<button class="btn btn-success" type="submit" id="btn">登陆</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript"
		src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>