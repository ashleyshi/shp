<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>注销页面</title>
       <%  session.removeAttribute("userName");
        //response.sendRedirect("showAllNewsServlet"); %>       
  </head>
  <body>
  <table align="center"  background="img/s.png" border="0" cellPadding="0"
	cellSpacing="0" width="611">
	<tr>
		<td colspan=2  height="326" align=center><strong><font color="blue"> 注销成功！<a href="showAllNewsServlet">返回主页面</a></font></td>
	</tr>   	
	</table>	
  </body>
<ml>
