<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="zh-cn">
<link rel="stylesheet" type="text/css" href="css/news.css">
	<link rel="shortcut icon" href="logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
<title>登录</title>
<!-- javaScript函数 validateLogin()，用来验证是否填写了用户名和密码：-->
<script language="JavaScript"><!--
   function validateLogin(){ 
     var strUserName = document. frmLogin. txtUserName.value;
     var strPassword = document. frmLogin. txtPassword.value;
     if (strUserName ==""){
       alert("请您输入用户名！");
       return false;
     }
     if (strPassword ==""){
       alert("请输入密码！");
       return false;
     }
   }
    //刷新验证码
    function changeImg(){
       document.getElementById("validateCodeImg").src="${pageContext.request.contextPath}/DrawImageServlet?"+Math.random();
    }
-->
</script>
</head>

<body 	style="background:url(../img/bg.png)";>
<!--提交时调用JavaScript函数 validateLogin()来验证是否填写了用户名和密码：-->
<form method="post" name="frmLogin" action="LoginServlet"
	onSubmit="javaScript: return validateLogin();">
<div>
		<div class="login-left";></div>
		<div>
			<div class="login-right"></div>
			<div style="float:right;margin:60px;position:absolute;margin-left:850px;margin-top:200px;">
				<input type="text" placeholder="用户名" style="width:200px;height:30px;" name="txtUserName"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:850px;margin-top:245px;">
				<input type="password" placeholder="密码" style="width:200px;height:30px;"  name="txtPassword"> 
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:850px;margin-top:280px;">
				<input type="text" name="random" style="width:40px;height:30px;" />
				<image src="include/random.jsp">
				<%-- <img alt="验证码看不清，换一张" src="${pageContext.request.contextPath}/DrawImageServlet" id="validateCodeImg" onclick="changeImg()">
				<a href="javascript:void(0)" onclick="changeImg()">换一张</a> --%>
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:950px;margin-top:342px;">
				<input  style="background-color:transparent;width:80px;height:40px;" name="Submit"  type="submit" value="" />
			</div>
			<div style="float:right;margin:60px;position:absolute;margin-left:807px;margin-top:342px;">
				<input  style="background-color:transparent;width:80px;height:40px;" name="Reset"  type="submit" value="" />
			</div>
		</div>
	</div>
</form>
</body>
</html>