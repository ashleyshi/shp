<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.New.entity.User"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="Content-Language" content="zh-cn">
<link rel="stylesheet" type="text/css" href="css/news.css">
	<link rel="shortcut icon" href="logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
<title>注册</title>
<script language=Javascript src="/js/validateRegister.js"></script>
</head>
<body>
<form name="frmSignUp" method="POST" action="CheckRegisterServlet"
	onsubmit="javaScript: return validate();">
<div>
	<div class="register-right";></div>
		<div>
				<div style="position:absolute;margin-left:890px;margin-top:140px;">用户注册</div>
					<ul>
						<%  Object errorMsg = request.getAttribute("result");
							User user = (User) request.getAttribute("user");
							if (errorMsg != null) {
						%>
					</ul>
				<div>
					<div  style="font-size:24px;color:#ff0000;position:absolute;margin-left:720px;margin-top:70px;">注册失败：<%=errorMsg.toString()%></div>
					<%}	%>
				</div>
			<div class="login-right"></div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:180px;">
				<input type="text" name="txtUserName" placeholder="用户名" value="<%=(user==null)?"":user.getUserName()%>" style="width:200px;height:30px;"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:222px;">
				<input type="password" placeholder="密码"  name="txtPassword" value="<%=(user==null)?"":user.getPassWord()%>" style="width:200px;height:30px;"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:264px;">
				<input type="password" placeholder="确认密码" name="txtConfPassword" value="<%=(user==null)?"":user.getPassWord()%>" style="width:200px;height:30px;"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:306px;">
			<select size="1" name="sltGender">
			<%if (user == null) {

			%>
			<option selected value="">--</option>
			<%} else {

				%>
			<option selected value="<%=user.getGender()%>"><%=user.getGender() == 0 ? "女" : "男"%></option>
			<%}%>
			<option value="0">女</option>
			<option value="1">男</option>
		</select>
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:352px;">
				<input type="text" placeholder="邮箱" name="txtEmail" value="<%=(user==null)?"":user.getEmail()%>"  style="width:200px;height:30px;"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:1230px;margin-top:270px;">
				<input  style="background-color:transparent;width:80px;height:40px;" type="submit"  value="" name="submit"/>
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:1230px;margin-top:322px;">
				<input  style="background-color:transparent;width:80px;height:40px;" type="reset"  value="" name="reset"/>
			</div>
			<ul><a href="showAllNewsServlet">返回首页</a></ul>
		</div>
	</div>
</form>
</body>
</html>
