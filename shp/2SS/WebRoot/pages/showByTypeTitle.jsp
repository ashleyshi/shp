<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.New.util.DateUtil" %>
<%@page import="com.New.entity.News" %>
<%@ page import="com.New.servlet.showAllNewsServlet" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">	
	<link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
    <link rel="icon" href="../logo.ico" type="image/x-icon">
    
    <% News news=(News)request.getAttribute("news");%>
<link rel="stylesheet" type="text/css" href="css/news.css" media="all">
</head>
<body style="background:#efefef" >  
<img src="img/newnew.png;" style="position:absolute;z-index:-1;margin-left:140px;"/>
	<div id="warpper" align="center">
		<table id="content" cellpadding="0" cellspacing="0"  >
				<tbody><tr>
					<td class="column" pid="root" id="column1" style="width:600px;">
						<div ptype="viewNewsObject" class="portlet portlet-default" id="QZ10001_viewNewsObject" style="border-width: medium; border-style: none; border-color: -moz-use-text-color; margin: 20px; padding: 0px;">
							<div class="portlet-content portlet-content-default" style="padding: 0px;">
							<div id="news_top" style="margin: auto; padding: 0px;"><img style="vertical-align: 
; display: block;"></div>
							<div id="news_content_111" style="margin: auto; padding: 0px; text-align: center;">
							<div id="news_t">
							<div id="title" style="font-size: 24px;background:transparent;margin-top:150px;">
								<% out.print(news.getTitle()); %>			
							</div>
							<img src="img/news_tline.gif"></div>
							<div id="ncontent_ctent" style="margin: auto; padding: 0px;"><br>
							
							<p style="line-height: 25px; margin: 6px 0px; none repeat scroll 0% 0%;"><span style="font-family: 宋体; color: black; font-size: 15px;">各学院（部）：</span></p>
							<p style="text-align:left;line-height:2em; text-indent:2em; margin: 6px 240px; none repeat scroll 0% 0%;width:800px;"><span style="font-family: 宋体; color: black; font-size: 15px;">
							<% out.print(news.getContent());%>
		<div id="link_top"><a href="showAllNewsServlet">返回首页</a></div>					
							
							</span></p>
							
							<p style="line-height: 25px; text-indent: 29px; margin: 6px 0px;none repeat scroll 0% 0%;"><span style="font-family: 宋体; padding-bottom:50px;color: black; font-size: 13px;"></span></p><p style="text-align: left; line-height: 25px; text-indent: 29px; margin: 6px 0px;  none repeat scroll 0% 0%; style：""><span style="font-family: 宋体; color: black; font-size: 15px;"></span><span style="font-family: 宋体; color: black; font-size: 13px;">&nbsp;</span></p><p style="line-height: 16px;">&nbsp;</p><p style="line-height: 16px;">&nbsp;</p>
							<p style="line-height: 16px;"><span style="font-family: 宋体;padding-bottom:50px;"></span></p>
							<p style="text-align: right; line-height: 25px; margin: 6px 0px; none repeat scroll 0% 0%;"><span style="font-family: 宋体; color: black; font-size: 15px;"></span><span style="font-family: 宋体; color: black; font-size: 15px;"></span></p><p>&nbsp;</p>
							</div><div id="con_link"><div id="print"></div>
							</div>
							<div id="from">发布单位：<% out.print(news.getType());%>&nbsp;&nbsp;&nbsp;&nbsp;发布时间:<% out.print(news.getCreate_date());%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
							<div>
							<img src="img/news_tline.gif"></div>
							
							<div id="link_list" style="text-align: center; margin: 6px 240px; padding-left: 60px;"><table class="xgxxtababc" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="line-height: 25px; height: 25px;"><td class="titletd"><div class="newsObjectdiv"><a class="a" style="font-size: 16px; font-weight: normal;"></a></div></td><td class="datetd" style="padding: 0px 0px 0px 60px; margin: 0px; width: 120px;"></td></tr></tbody></table>
							</div>
							</div>
							<div id="news_bottom" style="margin: auto; padding: 0px;">&nbsp;</div>
							</div>
						</div>
					</td>
				</tr>
			</tbody></table>
	</div>
</html>
