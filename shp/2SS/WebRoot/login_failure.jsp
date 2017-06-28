<%@ page language="java" contentType="textml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.New.entity.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8">
<meta http-equiv="Content-Language" content="zh-cn">
<title>登录</title>
    <link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
</head>
<body>
<%//从request获取用户名：
	String userName = session.getAttribute("userName").toString();
%>

<table align=center>
    <tr>
		<td height=130px>
		<td></td><td></td>
	</tr>
	<tr>
		<td>
		<td></td><td>
	</tr>
	<tr>
		<td></td>
		<td>
			<div align=center>
		<p><strong><font color="blue"><%=userName%>:</font><font color="red">登录失败!</font></p>
		<a href="findpass.jsp">忘记密码？</a><a href="register.jsp">注册一个</a>
		<a href="login2.jsp">返回</a>
			</div>
		</td><td><img  src="img/6.gif"/></td></td>
	</tr>
</table>

</body>
<ml>