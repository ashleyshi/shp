<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.New.entity.News" %>
<%@ page import="com.New.bean.monthBean"%>
<%@ page import="com.New.util.DateUtil" %>
<jsp:useBean id="cal"  class="com.New.bean.monthBean" scope="request"/>
<% 
   int today=cal.getToday();
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>软件学院学生服务平台</title>
	<meta charset="gb2312">
	<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
<link href=" css/bootstrap-combined.min.css" rel="stylesheet">
<link href=" css/layoutit.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
		<script src=" js/html5shiv.js"></script>
	<![endif]-->

	<!-- Fav and touch icons -->
	<script type="text/javascript" src=" js/jquery-2.0.0.min.js"></script>
	<!--[if lt IE 9]>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<![endif]-->
	<script type="text/javascript" src=" js/bootstrap.min.js"></script>

</head>

<span style="margin:0px;padding:0px;">
	<span  style="margin:0px;padding:0px;">
		<span  style="background:red;margin:0px;padding:0px;width:10px;">
			 <a href="#modal-container-325816" data-toggle="modal">xinwen </a>
			
						<span style="position:absolute;"  id="modal-container-325816" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<span style="position:absolute;">
					 <button style="position:absolute;" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						活动详情
					</h3>
				</span>
				<span style="position:absolute;" class="modal-body">
					<iframe style="position:absolute;" src="NewsByTypeTitleServlet?id=93" width="1100" height="500">
				</span>
				<span style="position:absolute;" class="modal-footer">
					 <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				</span>
			</span>
 <a href="#modal-container-325816" data-toggle="modal">xinwen </a>
		</span>
	</span>
</span>
	
</html>