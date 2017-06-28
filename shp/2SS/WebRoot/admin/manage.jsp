<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'manage.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/stylesss.css">
  </head>
  
<body>

    
		<a href="pages/add.jsp" class="btn">教室借用</a>
		<a href="file/upload.jsp" class="btn btn-secondary">失物招领</a>
		<a href="pages/add.jsp" class="btn">添加活动</a>
		<a href="showByPageServlet" class="btn btn-secondary">管理活动</a>
  
  </body>

</html>
