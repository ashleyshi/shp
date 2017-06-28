<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.New.entity.News"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
<title>学专会简介</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
<link rel="stylesheet" type="text/css" href="../css/box.css">
<link href="../css/focus.css" type="text/css" rel="stylesheet" />
<script src="../js/jquery.min.js" type="text/javascript"></script>
<script src="../js/function.js" type="text/javascript"></script>
<link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
<link rel="icon" href="../logo.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="../css/sooperfish.css"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="../css/sooperfish-theme-large.css" media="screen">
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
<script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
<link href="../css/comm.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/sky.css" type="text/css">
<style type="text/css">
#roll {
	height: 350px;
	margin: 10px auto;
	overflow: hidden;
	list-style: none;
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
			<div class="top_login">
				<a href="../login2.jsp">[登录]</a>|<a href="../register.jsp">[注册]</a>|<a
					href="../findpass.jsp">[找回密码]</a>
			</div>
			<div class="out_login">
				<a href="../logout.jsp">【退出当前用户】</a>
			</div>
		</div>
	</div>
	<!------------------------------------导航------------------------------------------>
	<div>
		<ul class="sf-menu" id="nav"
			style="width:1160px;background:#000;text-align:center;padding-left:180px;">
			<li class="big_nav"><a href="../showAllNewsServlet">首页</a>
			</li>
			<li><a href="../tw/tw.jsp">团委</a>
				<ul>
					<li><a href="../tw/tw.jsp">团委简介</a> <a href="../tw/tw-bm.jsp">部门简介</a>
						<ul>
							<li><a href="../tw/tw-bm.jsp">秘书处</a>
							</li>
							<li><a href="../tw/tw-bm.jsp">组织部</a>
							</li>
							<li><a href="../tw/tw-bm.jsp">新闻中心</a>
							</li>
							<li><a href="../tw/tw-bm.jsp">宣传部</a>
							</li>
							<li><a href="../tw/tw-bm.jsp">红烛实践部</a>
							</li>
						</ul></li>
				</ul>
			</li>
			<li><a href="../xsh/xsh.jsp">学生会</a>
				<ul>
					<li><a href="../xsh/xsh.jsp">学生会简介</a> <a
						href="../xsh/xsh-bm.jsp">部门简介</a>
						<ul>
							<li><a href="../xsh/xsh-bm.jsp">秘书处</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">文艺部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">体育部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">宣传部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">学研部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">生活部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">女生部</a>
							</li>
							<li><a href="../xsh/xsh-bm.jsp">民族部</a>
							</li>
						</ul></li>
				</ul></li>
			<li><a href="../xz/xz.jsp">学专会</a>
				<ul>
					<li class="small_nav"><a href="../xz/xz.jsp">学专会简介</a> <a
						href="../xz/xz-bm.jsp">部门简介</a>
						<ul>
							<li><a href="../xz/xz-bm.jsp">秘书处</a></li>
							<li><a href="../xz/xz-bm.jsp">宣传部</a></li>
							<li><a href="../xz/xz-bm.jsp">竞赛部</a></li>
							<li><a href="../xz/xz-bm.jsp">科研中心</a></li>
							<li><a href="../xz/xz-bm.jsp">IT实践部</a></li>
							<li><a href="../xz/xz-bm.jsp">ACM部</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li><a href="../ax/ax.jsp">爱心使者团</a>
				<ul>
					<li><a href="../ax/ax.jsp">爱心使者团简介</a> <a href="../ax/ax.jsp">部门简介</a>
						<ul>
							<li><a href="../ax/ax.jsp">秘书处</a>
							</li>
							<li><a href="../ax/ax.jsp">宣传部</a>
							</li>
							<li><a href="../ax/ax.jsp">交流部</a>
							</li>
							<li><a href="../ax/ax.jsp">活动部</a>
							</li>
							<li><a href="../ax/ax.jsp">培训部</a>
							</li>
						</ul></li>
				</ul></li>
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

	<div class="sky">
		<div class="clouds_one"></div>
		<div class="clouds_two"></div>
		<div class="clouds_three"></div>
	</div>
	</div>
	<!-----------------------------------新闻页面--------------------------------------->
<body>
	<div class="body_news">
		<div class="main_box main_box_style1">
			<div class="main_box_inner">
				<div class="main_box_inner_left">
					<div id="nav_128" class="nav_box nav_box_menu">

						<div class="nav_title">
							<span class="nav_sign">学专会</span><span class="nav_more"></span>
						</div>
						<div id="nav_menu_128" class="nav_menu">
							<ul id="rootul_128">
								<li id="sl647"><a href="xz.jsp" class="sla647">学专会简介</a>
								</li>

								<li id="sl649"><a href="xz-bm.jsp" class="sla649">部门简介</a>
								</li>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						shut_allsubnav("rootul_128");
						expand_subnav("sl647", "0");
					</script>

					<div id="nav_129" class="nav_box nav_box_menu">

						<div class="nav_title">
							<span class="nav_sign">联系方式</span><span class="nav_more"></span>
						</div>
						<div class="tel">
							<span>联系电话：0760-22517083</span> <span>传真：0760-86744123</span> <span>QQ：14837715（授权）
								190452532（定制）</span> <span>Email：service#pageadmin.net</span> <span>地址：吉林省长春市人民大街(130024)
							</span>
						</div>
						<div id="nav_menu_129" class="nav_menu">
							<ul id="rootul_129"></ul>
						</div>
					</div>
					<script type="text/javascript">
						shut_allsubnav("rootul_129");
						expand_subnav("sl647", "0");
					</script>
				</div>
				<div class="main_box_inner_right">
					<div class="current_location current_location_647">
						<ul>
							<li class="current_location_1">当前位置：<a href= />首页</a> &gt; <a
								href="../gywm/">学专会</a> &gt; <a href="../gywm/gsjj">学专会简介</a>
							</li>
							<li class="current_location_2">学专会简介</li>
						</ul>
					</div>
					<div class="sublanmu_box sublanmu_box_647">
						<div class="sublanmu_content sublanmu_content_introduct">
							<div class="sublanmu_content sublanmu_content_introduct"
								id="Content">
								<p>&nbsp;&nbsp;&nbsp;
									东北师范大学信息与软件工程学院学生专业发展协会(简称学专会)成立于2003年，是一个丰富学生专业学习生活，梳理学院学术事项，促使老师同学交流的重要学生组织。从创办以来，一直致力于提高我院学生的专业能力水平，提升学生竞争实力，扩展我院学生的视野，为学院和学生之间搭建完善的交流平台。</p>
								<p>&nbsp;&nbsp;&nbsp;下属五个部门：秘书处，科研中心，竞赛部，宣传部，IT实践部，ACM部。</p>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clear main_box_inner_bottom"></div>
		</div>
	</div>
	<!-----------------------------------页脚--------------------------------------->
	<div id="footing">
		<div class="bottom_content">
			<span class="foot-maker" style="color:#fff;"><a
				href="http://xxhb.nenu.edu.cn">维护：信息化管理与规划办公室</a>
			</span><span style="color:#fff;" class="foot-maker">地址：吉林省长春市净月大街(130024)</span>
			</p>
		</div>
		<div class="bottom_copyright">
			<p>
				<span class="foot-copy">版权所有©东北师范大学&nbsp;&nbsp;&nbsp;&nbsp;吉ICP备05004942</span>
		</div>
	</div>
</body>
</html>