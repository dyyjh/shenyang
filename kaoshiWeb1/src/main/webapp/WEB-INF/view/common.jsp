<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="js/common/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src= "js/common/jquery.form.js"></script>
<script type="text/javascript" src= "js/common/jquery.datePicker.min-2.1.2.js"></script>
<script type="text/javascript" src= "js/common/jquery.bgiframe.min.js"></script>

 -->
 
 <script type="text/javascript" src= "js/common/jquery-1.12.4.js"></script>
 
<%--  <br>Welcome to this
	<font color="green">Login Page</font>!
	<br>
	<form id="loginForm" method="post" action="/login" >
	
		<br>
		<h1>Please input your message:</h1>
		
		<c:choose>
	   	<c:when test="${tipMessage =='error.001'}">
	   		<font color="red">用户和密码不能为空</font>
	   	</c:when>
	   	<c:when test="${tipMessage =='error.002'}">
	   		<font color="red">用户为空</font>
	   	</c:when>
	   	<c:when test="${tipMessage =='error.003'}">
	   		<font color="red">用户或者密码不正确</font>
	   	</c:when>
  		 </c:choose>
   
		<br> 用户名:<input id="userid" type="text" name="userid"
			value="${userid}"> <br> 密码: <input id="userPass"
			type="password" name="userPass" value="${userPass}"><br>
		<br> <br> <br> <!-- <input type="submit" value="登陆"
			onclick="login()"> -->
			<input type="submit" value="登陆" id = "btn" >
			 <input type="reset"> <br>
	</form>  --%>