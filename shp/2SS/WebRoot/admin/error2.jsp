<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/include.jsp"%>
<%@ page import="com.Category.dao.*" %>
<%@ page import="com.Category.entity.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>错误!</title>
<link rel="stylesheet" href="../css/css.css" type="text/css" media="screen">
</head>
<body>

<TABLE bgColor=<%=tablebgcolor%> border=0 cellPadding=0 cellSpacing=1 width=400 align=CENTER>
	<TR><TD align=middle background=../img/index/topback.gif height=10></TD></TR>
</TABLE>
<TABLE border="0" width=400 align=center cellpadding=0 cellspacing=1  bgcolor=<%=tablebgcolor%>>
<TR bgcolor=<%=trbgcolor%> height=25><TD align=center><FONT COLOR=red><B>错误</B></FONT></TD></TR>
<TR><TD align=center bgColor=<%=tdbgcolor%>><BR>该用户名已经存在，请重新输入<A HREF="addmaster.jsp">返回</A>！<BR></TD></TR>
</TABLE>
<%@ include file="../include/foot.jsp"%>