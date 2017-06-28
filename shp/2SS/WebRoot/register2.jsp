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
<title>确认用户信息</title>
<script language=Javascript src="/js/validateRegister.js"></script>
</head>
<body>
<form name="frmSignUp" method="POST" action="RegisterServlet"
	onsubmit="javaScript: return validate();">
<div>
	<div class="register-left";></div>
		<div>
				<div style="position:absolute;margin-left:890px;margin-top:140px;">确认用户注册信息</div>
							<%
								User user = (User)request.getAttribute("user");
							%>
			<div class="login-right"></div>
			
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:180px;">
					<ul><%=(user == null) ? "" : user.getUserName()%></ul>
			     <input type="hidden" name="txtUserName" placeholder="用户名" value="<%=(user==null)?"":user.getUserName()%>" style="width:200px;height:30px;"> 
			</div>	     
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:222px;">
			    <ul><%=(user == null) ? "" : user.getPassWord()%></ul>
				<input type="hidden" placeholder="密码"  name="txtPassword" value="<%=(user==null)?"":user.getPassWord()%>" > 
				<input type="hidden" name="txtConfPassword" value="<%=(user==null)?"":user.getPassWord()%>" style="width:200px;height:30px;" />	
			</div>	
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:264px;">
				
			</div>
			
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:306px;">
			  <ul><%=user.getGender() == 0 ? "女" : "男"%> </ul>
		          <%if(user!= null) {
   
				  %> <input type="hidden" name="sltGender" value="<%=user.getGender()%>"> <%}
			%>
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:880px;margin-top:352px;">
			    <u><%=(user == null) ? "" : user.getEmail()%></u>
				<input type="hidden"  name="txtEmail" value="<%=(user==null)?"":user.getEmail()%>"  style="width:200px;height:30px;"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:1230px;margin-top:270px;">
				<input  style="background-color:transparent;width:80px;height:40px;" type="button"  value="修改" name="edit" onclick="javascript:history.go(-1);"/>
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:1230px;margin-top:322px;">
				<input  style="background-color:transparent;width:80px;height:40px;" type="submit"  value="" name="submit"/>
			</div>
		</div>
	</div>
</form>
</body>
</html>
