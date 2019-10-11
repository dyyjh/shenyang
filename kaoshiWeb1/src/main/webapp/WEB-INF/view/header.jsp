<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/view/taglibs.jsp"%>
<script type="text/javascript" src="js/common/jquery-1.12.4.js"></script>
<link type="text/css"
	href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default ">
	<div class="container">
		<div class="navbar-header">
		<a class = "navbar-brand" href="#"><strong>Logo</strong></a>
		</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">用户管理</a></li>
				<li><a href="#">信息管理</a></li>
				<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统管理
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
				<li><a href="loginUserPage">用户管理</a> </li>
				<li class="divider"></li>
				<li ><a href="#">角色管理</a> </li>
				<li ><a href="#">菜单管理</a> </li>
				</ul>
				</li>
			</ul>
		<div class="navbar-right" >
		<p class="navbar-text" >欢迎您,${sessionScope.sessionUser.userName } </p>
		</div>
	</div>
	</nav>
	<script type="text/javascript"  src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>