<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>学生会简介</title>
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
			<link rel="stylesheet" href="../css/sky.css" type="text/css">
	<style type="text/css">
	#roll{height:350px; margin:10px auto;overflow:hidden;list-style:none;}
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
<!------------------------------------导航------------------------------------------>
			<ul class="sf-menu" id="nav"
				style="width:1160px;background:#000;text-align:center;padding-left:180px;">
				<li class="big_nav"><a href="../showAllNewsServlet">首页</a></li>
				<li><a href="../tw/tw.jsp">团委</a>
					<ul>
						<li><a href="../tw/tw.jsp">团委简介</a> <a href="../tw/tw-bm.jsp">部门简介</a>
							<ul>
								<li><a href="../tw/tw-bm.jsp">秘书处</a></li>
								<li><a href="../tw/tw-bm.jsp">组织部</a></li>
								<li><a href="../tw/tw-bm.jsp">新闻中心</a></li>
								<li><a href="../tw/tw-bm.jsp">宣传部</a></li>
								<li><a href="../tw/tw-bm.jsp">红烛实践部</a></li>
							</ul>
						</li>
					</ul></li>
				<li><a href="xsh.jsp">学生会</a>
					<ul>
						<li><a href="xsh.jsp">学生会简介</a> <a
							href="xsh-bm.jsp">部门简介</a>
							<ul>
								<li><a href="xsh-bm.jsp">秘书处</a></li>
								<li><a href="xsh-bm.jsp">文艺部</a></li>
								<li><a href="xsh-bm.jsp">体育部</a></li>
								<li><a href="xsh-bm.jsp">宣传部</a></li>
								<li><a href="xsh-bm.jsp">学研部</a></li>
								<li><a href="xsh-bm.jsp">生活部</a></li>
								<li><a href="xsh-bm.jsp">女生部</a></li>
								<li><a href="xsh-bm.jsp">民族部</a></li>
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
		<div class="sky">
	<div class="clouds_one"></div>
	<div class="clouds_two"></div>
	<div class="clouds_three"></div>
</div>
<!-----------------------------------新闻页面--------------------------------------->
		<div class="body_news">
<div class="main_box main_box_style1">
 <div class="main_box_inner">
   <div class="main_box_inner_left">
<div id="nav_128"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">学生会</span><span  class="nav_more"></span></div>
<div id="nav_menu_128"  class="nav_menu">
<ul id="rootul_128">
  <li id="sl647"><a href="xsh.jsp" class="sla647">学生会简介</a></li>
  <li id="sl648"><a href="xsh-bm.jsp" class="sla648">部门简介</a></li>

</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_128");
expand_subnav("sl647","0");
</script>

<div id="nav_129"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">联系方式</span><span  class="nav_more"></span></div>
<div class="tel">
<span>联系电话：0760-22517083</span>
<span>传真：0760-86744123</span>
<span>QQ：14837715（授权） 190452532（定制）</span>
<span>Email：service#pageadmin.net</span>
<span>地址：吉林省长春市人民大街(130024) </span>
</div><div id="nav_menu_129"  class="nav_menu">
<ul id="rootul_129"></ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_129");
expand_subnav("sl647","0");
</script>
</div>
   <div class="main_box_inner_right">
<div class="current_location current_location_647"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="../gywm/">学生会</a> &gt; <a href="../gywm/gsjj">学生会简介</a></li>
<li class="current_location_2">学生会简介</li>
</ul></div>
<div class="sublanmu_box sublanmu_box_647">
<div class="sublanmu_content sublanmu_content_introduct"><div class="sublanmu_content sublanmu_content_introduct" id="Content" >
	<p>
	<div style="text-indent:2em;">学生会是在学院党委领导下自主开展学生工作的群众性组织，本着“全心全意为同学们服务”  的态度，学生会组织已成为学院沟通学生的不可或缺的枢纽，在历届学生会成员中不乏学院的佼佼者。其中，信息与软件工程学院学生会有主席团和秘书处、文艺  部、体育部、宣传部、学研部、生活部、女生部、民族部八个部门。<br />

 <div style="text-indent:2em;">软件学院学生会旨在服务广大学生,举办各种文体、娱乐、学习活动，以此活跃校园气氛，丰富同学们的课余生活，为同学们答疑解惑、提供帮助。


        同时，软件学院学生会还是同学与学校学院联系沟通的重要渠道，起到“上传下达”的作用。学生干部在服务于同学的同时，人际交往、组织管理等自身能力也得到锻炼，个人综合素质得以提升。</div></div>
	<b>工作要求：</b><br />


<div style="text-indent:2em;">1.态度认真。学生工作要求在规定时间内务必保质保量完成，不拖沓,不予他人代做，不为自己的失职找借口推脱，学生干部要以身作则；<br /></div>
<div style="text-indent:2em;">2.学会反馈。有事要向部长或者副部长反馈，申请实施；工作完成后及时汇报给上级；<br /></div>
<div style="text-indent:2em;">3.注重效率。工作有什么不理解的地方要及时提出来，不要总在一个地方犯错；做事掌握方法，不要埋头盲干做无用功；<br /></div>
<div style="text-indent:2em;">4.学习为先。每个学生干部应该要能协调好学习和工作的关系，工作、学习两不误；<br /></div>
<div style="text-indent:2em;">5.礼多人不怪。待人接物注意礼数身份；<br /></div>
<div style="text-indent:2em;">6.开诚布公，敢于说“不”。前提是无论反对和批评都是建设性的、有高度诚意的，而不是为批评而批评，为辩论而批评。</div>


	</p>
</div></div>
</div>

 <div class="clear main_box_inner_bottom"></div>
</div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>
	</div>
<!-----------------------------------页脚--------------------------------------->
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