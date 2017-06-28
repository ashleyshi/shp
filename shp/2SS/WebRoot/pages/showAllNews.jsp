<%@ page language="java"  contentType="text/html; charset=utf-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>showAllNews.jsp</title>
    	<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="../css/box.css">
	<link href="../css/focus.css" type="text/css" rel="stylesheet" />
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/function.js" type="text/javascript"></script>
	<link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
    <link rel="icon" href="../logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../css/sooperfish.css" media="screen">
	<link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large.css" media="screen">
	<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
	<link href="../css/comm.css" type="text/css" rel="stylesheet" />
	<style type="text/css">
	#roll{height:350px; margin:10px auto;overflow:hidden;list-style:none;}
	</style>
<style>
/* Border styles */
#table-1 thead, #table-1 tr {
border-top-width: 1px;
border-top-style: solid;
border-top-color: rgb(230, 189, 189);
}
#table-1 {
border-bottom-width: 1px;
border-bottom-style: solid;
border-bottom-color: rgb(230, 189, 189);
}

/* Padding and font style */
#table-1 td, #table-1 th {
padding: 5px 10px;
font-size: 12px;
font-family: Verdana;
color:#000;
}

/* Alternating background colors */
#table-1 tr:nth-child(even) {
background:#AFEEEE
}
#table-1 tr:nth-child(odd) {
background: #FFF;
}
#table-1 a{
	color:000;
	font-size:17px;
	font-weight:bold;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
$('ul.sf-menu').sooperfish();
});
</script>   
  </head>
  <body>
  <div id="top">
		<div class="logo"></div>
		<div class="top_content">
			<div  class="top_login"><a href="../login2.jsp">[登录]</a>|<a href="../register.jsp">[注册]</a>|<a href="../findpass.jsp">[找回密码]</a></div>
			<div class="out_login"><a href="../logout.jsp">【退出当前用户】</a></div>
		</div>
	</div>
	
	
	<div id="body">
		<div id="top_nav">
			<ul class="sf-menu" id="nav"
				style="width:1158px;background:#000;text-align:center;padding-left:88px;">
				<li class="big_nav"><a href="../showAllNewsServlet">首页</a></li>
				<li><a href="tw.jsp">团委</a>
					<ul>
						<li><a href="tw.jsp">团委简介</a> <a href="tw-bm.jsp">部门简介</a>
							<ul>
								<li><a href="tw-bm.jsp">秘书处</a></li>
								<li><a href="tw-bm.jsp">组织部</a></li>
								<li><a href="tw-bm.jsp">新闻中心</a></li>
								<li><a href="tw-bm.jsp">宣传部</a></li>
								<li><a href="tw-bm.jsp">红烛实践部</a></li>
							</ul>
						</li>
					</ul></li>
				<li><a href="../xsh/xsh.jsp">学生会</a>
					<ul>
						<li><a href="../xsh/xsh.jsp">学生会简介</a> <a
							href="../xsh/xsh-bm.jsp">部门简介</a>
							<ul>
								<li><a href="../xsh/xsh-bm.jsp">秘书处</a></li>
								<li><a href="../xsh/xsh-bm.jsp">文艺部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">体育部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">宣传部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">学研部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">生活部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">女生部</a></li>
								<li><a href="../xsh/xsh-bm.jsp">民族部</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="../xz/xz.jsp">学专会</a>
					<ul>
						<li class="small_nav"><a href="../xz/xz.jsp">学专会简介</a> <a
							href="../xz/xz-bm.jsp">部门简介</a>
							<ul>
								<li><a href="../xz/xz-bm.jsp">秘书处</a>
								</li>
								<li><a href="../xz/xz-bm.jsp">宣传部</a>
								</li>
								<li><a href="../xz/xz-bm.jsp">竞赛部</a>
								</li>
								<li><a href="../xz/xz-bm.jsp">科研中心</a>
								</li>
								<li><a href="../xz/xz-bm.jsp">IT实践部</a>
								</li>
								<li><a href="../xz/xz-bm.jsp">ACM部</a>
								</li>
							</ul></li>
					</ul></li>
				<li><a href="../ax/ax.jsp">爱心使者团</a>
					<ul>
						<li><a href="../ax/ax.jsp">爱心使者团简介</a> <a href="../ax/ax.jsp">部门简介</a>
							<ul>
								<li><a href="../ax/ax.jsp">秘书处</a></li>
								<li><a href="../ax/ax.jsp">宣传部</a></li>
								<li><a href="../ax/ax.jsp">交流部</a></li>
								<li><a href="../ax/ax.jsp">活动部</a></li>
								<li><a href="../ax/ax.jsp">培训部</a></li>
							</ul>
						</li>
					</ul>
				</li>
			<li><a href="#">学生服务</a>
				<ul>
					<li>
					   <a href="../file/upload.jsp">上传资料</a> 
					   <a href="../ListFileServlet">下载资料</a>   
					   <a href="../showByPageServletMore">更多活动信息</a>
				</ul>
			</li>
			<li><a href="../bbs/compose.jsp">活动论坛</a>
				<ul>
					<li>
					     <a href="../bbs/compose.jsp">发布帖子</a>
					     <a href="../bbs/browse.jsp">浏览帖子</a>
					</li>
			
				</ul>
			</li>
			<li><a href="../admin/index.jsp">管理员管理</a>
				<ul>
					<li><a href="../pages/add.jsp">教室借用</a> 
					    <a href="../pages/add.jsp">失物招领</a><a href="../pages/add.jsp">添加活动</a>
						<a href="../showByPageServlet">管理活动</a>
					</li>
				</ul>
			</li>
			</ul>
			<div style="clear:both"></div>
		</div>
		
	<h1>显示全部活动信息页面</h1>   
    <form action="" method="post">
    <table border="0"  id="table-1" style="width:1260px;">
		<tr>
			<th>编号</th><th>活动标题</th><th>活动内容</th><th>创建时间</th><th>组织名称</th><th>操作</th>
        </tr>
        <c:forEach items="${list}" var="list">
        	<tr>
               <td>${list.id}</td>
               <td>${list.title}</td>
               <td>${list.content}</td>
               <td>${list.create_date}</td>
                <td>${list.type}</td>
               <td>
               <% if("admin".equals(session.getAttribute("userName"))){%>
              		 <a href="QueryNewByIdServlet?id=${list.id}">修改</a>
              		 <a href="DeleteNewServlet?id=${list.id}">删除</a>}<%		 
              %>
               </td>         
            </tr>
        </c:forEach>
        </table>
    </form>
    	<div id="footing">
		<div class="bottom_content">
				<span class="foot-maker" style="color:#fff;"><a href="http://xxhb.nenu.edu.cn"  >维护：信息化管理与规划办公室</a></span><span style="color:#fff;"class="foot-maker">地址：吉林省长春市净月大街(130024)</span>
            </p>
		</div>
		<div class="bottom_copyright">
			<p>
                <span  class="foot-copy">版权所有©东北师范大学&nbsp;&nbsp;&nbsp;&nbsp;吉ICP备05004942</span>
		</div>
	</div>
  </body>
</html>
