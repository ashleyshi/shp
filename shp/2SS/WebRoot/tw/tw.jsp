<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>团委简介</title>
	<meta charset="gb2312">
	<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="../css/box.css">
	<link href="../css/focus.css" type="text/css" rel="stylesheet" />
	<link href="../css/comm.css" type="text/css" rel="stylesheet" />
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/function.js" type="text/javascript"></script>
	<link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
    <link rel="icon" href="../logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../css/sooperfish.css" media="screen">
	<link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large.css" media="screen">
	<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
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

<div  class="nav_title"><span  class="nav_sign">团委</span><span  class="nav_more"></span></div>
<div id="nav_menu_128"  class="nav_menu">
<ul id="rootul_128"><li id="sl647"><a href="tw.jsp" class="sla647">团委简介</a></li>

<li id="sl649"><a href="tw-bm.jsp" class="sla649">部门简介</a></li>
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
<div class="current_location current_location_647"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="../gywm/">团委</a> &gt; <a href="../gywm/gsjj">团委简介</a></li><li class="current_location_2">团委简介</li></ul></div>
<div class="sublanmu_box sublanmu_box_647">
<div class="sublanmu_content sublanmu_content_introduct"><div class="sublanmu_content sublanmu_content_introduct" id="Content">
	<p>
	&nbsp;&nbsp;&nbsp; 信息与软件工程学院团委是在校团委和院党委领导下的先进青年组织，围绕学院党团中心工作，
	以学院“能力型软件人才”的培养目标为导向，紧密结合学院青年思想实际和专业特点，辅助学院第一课堂“项目拉动教学模式”，
	形成了“提升学生专业能力素质，帮助学生实现职业梦想”的第二课堂专业培养体系，引领学生思想，服务学生成长，培养学生精英，
	努力开创我院共青团工作新局面，为广大院学生发挥才干、展示自我搭建交流的平台，为我院的学风建设和人才培养做出了应有的贡献。</p>
	<p>&nbsp;&nbsp;&nbsp;其主要任务是协助团委书记开展好院内的各种活动，并协调好与其他足组织的关系。</p>
	<p>&nbsp;&nbsp;&nbsp;下属五个部门：秘书处，组织部，新闻中心，宣传部，红烛实践部。	</p>
	<p>&nbsp;&nbsp;&nbsp;信息与软件工程学院团委旨在传播软件正能量，端正思想，丰富学院师生课余生活。各部门精诚合作，内部团结友爱。</p>
</div></div>
</div></div>
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