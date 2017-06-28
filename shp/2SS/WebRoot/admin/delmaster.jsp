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
<%int id = Integer.parseInt(request.getParameter("id"));
MasterMgr mgr=new MasterMgr();
mgr.delete(id);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<meta HTTP-EQUIV=REFRESH CONTENT='0; URL=mastermanage.jsp'>
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/news.css" type="text/css" media="screen">
</head>
<body>
	<span id=yu></span><a href=javascript:countDown></a>
	<script>
	function 
	countDown(secs){yu.innerText=secs;if(--secs>0)setTimeout("countDown("+secs+")",1000);}countDown(0);
	</script>
</body>
</html>