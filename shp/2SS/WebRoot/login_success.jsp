<%@ page language="java" contentType="textml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.New.entity.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="textml; charset=utf-8">
<meta http-equiv="Content-Language" content="zh-cn">
    <link rel="shortcut icon" href="logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
<title>登录</title>
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
		<td><img  src="img/3.gif"/></td>
		<td></td><td><img  src="img/3.gif"/></td>
	</tr>
	<tr>
		<td></td>
		<td>
			<div align=center style="width:300px;">
			<p><strong><font color="blue"><%=userName%>:</font>
			<font color="red">登录成功!</font><a href="showAllNewsServlet">返回首页</a></p>
			</div>
		</td><td></td>
	</tr>
</table>


</body>
<ml>
