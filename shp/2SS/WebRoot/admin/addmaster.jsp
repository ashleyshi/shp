<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../include/include.jsp"%>
<%@ page import="com.Category.dao.*" %>
<%@ page import="com.Category.entity.*" %>
<%String userName = (String) session.getAttribute("username");
	if (!userName.equals("admin")) {
			response.sendRedirect("error1.jsp");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/news.css" type="text/css"
	media="screen">
</head>
<body>
<script Language="JavaScript">
<!--
function check_input(theForm)
{

   if (theForm.name.value == "")
  {
    alert("请输入管理员名称.");
    theForm.name.focus();
    return (false);
  }

   if (theForm.pass.value == "")
  {
    alert("请输入管理员密码.");
    theForm.pass.focus();
    return (false);
  }

  if (theForm.name.value.length > 20)
    {
    alert("管理员名称长度应小于20个字符.");
    theForm.name.focus();
    return (false);
  }

  if (theForm.pass.value.length > 16)
    {
    alert("管理员密码长度应小于16个字符.");
    theForm.pass.focus();
    return (false);
  }

   if (theForm.classid.value == "")
  {
    alert("请选择栏目.");
    theForm.classid.focus();
    return (false);
  }

}
//-->
</script>
<TABLE bgColor=<%=tablebgcolor%> border=0 cellPadding=0 cellSpacing=1
	width=100% align=CENTER>
	<TR>
		<TD align=middle background=../img/index/topback.gif height=10></TD>
	</TR>
</TABLE>
<TABLE border="0" width=100% align=center cellpadding=0 cellspacing=1
	bgcolor=<%=tablebgcolor%>>
	<form method="POST" action="../MasterRegisterServlet"
		onsubmit="return check_input(this)">
	<TR bgcolor=<%=trbgcolor%> height=25>
		<TD colspan=2 style="font-size:18px;font-weight:bold;"><FONT COLOR="#ffffff"><FONT SIZE="5" COLOR="#ffcc00"><B>添加新的管理员</B></FONT><B>
		**为必填项目</B></FONT></TD>
	</TR>
	<TR>
		<TD style="font-size:18px;font-weight:bold;" width="30%" bgColor=<%=tdbgcolor%>>&nbsp;<B>管理员</B></TD>
		<TD  width="70%" bgColor=<%=tdbgcolor%>><input TYPE="text" name=name
			size=20 maxlength=20>&nbsp;**不得超过 10 个字符</TD>
	</TR>
	<TR>
		<TD style="font-size:18px;font-weight:bold;" width="30%" bgColor=<%=tdbgcolor%>>&nbsp;<B>管理员密码</B></TD>
		<TD  width="70%" bgColor=<%=tdbgcolor%>><input TYPE="text" name=pass
			size=20 maxlength=16>&nbsp;**不得超过 16 个字符</TD>
	</TR>


	<TR>
		<TD bgColor=<%=tdbgcolor%> colspan=2 align=center><BR><FONT
			color=#000000> <INPUT name=Submit type=submit value="确 定"> &nbsp;&nbsp;
		<INPUT name=Submit2 type=reset value="清 除"></FONT><BR>
		</TD>
	</TR>
	<form>
</TABLE>
