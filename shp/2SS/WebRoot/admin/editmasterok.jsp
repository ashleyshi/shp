<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/include.jsp"%>
<%@ page import="com.Category.dao.*" %>
<%@ page import="com.Category.entity.*" %>
<%
String userName = (String) session.getAttribute("username");
if (!userName.equals("admin")){ 
	response.sendRedirect("error1.jsp");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<meta HTTP-EQUIV=REFRESH CONTENT='4; URL=mastermanage.jsp'>
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/news.css" type="text/css" media="screen">
</head>
<body>
<TABLE bgColor=<%=tablebgcolor%> border=0 cellPadding=0 cellSpacing=1 width=400 align=CENTER>
	<TR>
		<TD align=middle background=../img/index/topback.gif height=10></TD>
	</TR>
</TABLE>
<TABLE border="0" width=400 align=center cellpadding=0 cellspacing=1  bgcolor=<%=tablebgcolor%>>
	<TR bgcolor=<%=trbgcolor%> height=25><TD align=center><FONT COLOR=red><B>修改管理员信息成功</B></FONT></TD>
	</TR>
	<TR><TD align=center style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor%>><BR>本页面将在<b><span id=yu>3</span><a href=javascript:countDown></a></b>秒后自动返回栏目管理页面，您可以选择以下操作：<BR><BR>
	<li><a style="font-size:18px;font-weight:bold;" href="../showAllNewsServlet.jsp">返回首页</a></li><br>
	<li><a style="font-size:18px;font-weight:bold;" href='editmaster.jsp?id=<%=request.getParameter("id")%>'>继续修改管理员信息</a></li><br>
	<li><a style="font-size:18px;font-weight:bold;" href="mastermanage.jsp">返回管理页面</a></li>
	</TD></TR>
</TABLE>
<script>
	function 
	countDown(secs){yu.innerText=secs;if(--secs>0)setTimeout("countDown("+secs+")",1000);}countDown(3);
	</script>

	
	