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
<meta http-equiv="refresh" content="60*60">
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/css.css" type="text/css" media="screen">
</head>
<body>
<TABLE bgColor=<%=tablebgcolor%> border=0 cellPadding=0 cellSpacing=1 width=100% align=CENTER>
	<TR><TD align=middle background=../img/index/topback.gif height=10>
	</TD></TR>
</TABLE>
<TABLE align=center border=0 cellPadding=6 cellSpacing=1 width=100% bgColor=<%=tablebgcolor%>>
	<TBODY>
	<TR>
		<TD bgColor=<%=tdbgcolor2%> colspan=3 align=center><FONT SIZE="3" COLOR="#ffffff"><B>管理员管理</B></FONT></TD>
	</TR>
	<TR >
		<TD  bgColor=<%=tdbgcolor2%> colspan=3><A style="font-size:18px;font-weight:bold;"  HREF="addmaster.jsp">添加管理员</A>
		&nbsp;&nbsp;<A style="font-size:18px;font-weight:bold;" HREF="logout.jsp">退出</A>
		&nbsp;&nbsp;<A style="font-size:18px;font-weight:bold;" HREF="javascript:this.location.reload()">刷新</A>
		&nbsp;&nbsp;<A style="font-size:18px;font-weight:bold;" HREF="../admin/manage.jsp">后台管理主页</A>
		&nbsp;&nbsp;<A style="font-size:18px;font-weight:bold;" HREF="../showAllNewsServlet">主页</A></TD>
	</TR>
	<TR>
		<TD bgColor=<%=tdbgcolor2%> colspan=2 width=100%>
		
		</TD>
		<TD align=center bgColor=<%=tdbgcolor2%> width=30%>
		<%MasterMgr masterMgr=new MasterMgr();%>&nbsp;&nbsp;共有<FONT COLOR="red"><%=masterMgr.getTotal()%></FONT>个管理员
		</TD>
	</TR>
	<TR align=center>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%> width=12%>管理员编号</TD>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%> width=64%>管理员名称</TD>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%> width=24%>操作</TD>
	</TR>
<%	Collection c = masterMgr.getAllByIdAsc();
	Iterator iterator = c.iterator();
	while (iterator.hasNext()) {
		Master master = (Master) iterator.next();
%>
	<TR>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%>><%=master.getId()%></TD>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%>><A style="font-size:18px;font-weight:bold;" HREF="editmaster.jsp?id=<%=master.getId()%>"><%=master.getUsername()%></A></TD>
		<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor4%> align=center><A style="font-size:18px;font-weight:bold;" HREF="editmaster.jsp?id=<%=master.getId()%>">编辑管理员</A>
		&nbsp;<%if (!master.getUsername().equals("admin"))	{%><A style="font-size:18px;font-weight:bold;" HREF="delmaster.jsp?id=<%=master.getId()%>">删除管理员</A><%}%></TD>
	</TR>
	<%}%>
	</TBODY>
</TABLE>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" align=center>
	<TR bgColor=<%=trbgcolor2%>>
	<TD align=middle background=../img/index/botback.gif vAlign=bottom width="100%">
	<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" align=center>
	<TR>
	<TD width=1><IMG border=0 height=17 hspace=0 src="../img/index/left.gif" width=14></TD>
    <TD align=middle width="100%"></TD>
    <TD align=right width=1><IMG border=0 height=17 hspace=0 src="../img/index/right.gif"  width=14></TD>
	</TR>
	</TABLE>
	</TD>
	</TR>
</TABLE>
