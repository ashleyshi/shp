<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>爱心使者团部门简介</title>
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
				<li><a href="ax.jsp">爱心使者团</a>
					<ul>
						<li><a href="ax.jsp">爱心使者团简介</a> <a href="ax-bm.jsp">部门简介</a>
							<ul>
								<li><a href="ax-bm.jsp">秘书处</a></li>
								<li><a href="ax-bm.jsp">宣传部</a></li>
								<li><a href="ax-bm.jsp">交流部</a></li>
								<li><a href="ax-bm.jsp">活动部</a></li>
								<li><a href="ax-bm.jsp">培训部</a></li>
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

<div  class="nav_title"><span  class="nav_sign">爱心使者团</span><span  class="nav_more"></span></div>
<div id="nav_menu_128"  class="nav_menu">
<ul id="rootul_128"><li id="sl647"><a href="ax.jsp" class="sla647">爱心使者团简介</a></li>

<li id="sl649"><a href="ax-bm.jsp" class="sla649">部门简介</a></li>
</ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_128");
expand_subnav("sl649","0");
</script>

<div id="nav_129"  class="nav_box nav_box_menu">

<div  class="nav_title"><span  class="nav_sign">联系方式</span><span  class="nav_more"></span></div>
<div class="tel">
<span>联系电话：0760-22517083</span>
<span>传真：0760-86744123</span>
<span>QQ：14837715（授权） 190452532（定制）</span>
<span>Email：service#pageadmin.net</span>
<span>地址：广东省中山市南头金湾广场B座16号 </span>
</div><div id="nav_menu_129"  class="nav_menu">
<ul id="rootul_129"></ul>
</div></div>
<script type="text/javascript">
shut_allsubnav("rootul_129");
expand_subnav("sl649","0");
</script>
</div>
   <div class="main_box_inner_right">
<div class="current_location current_location_647"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="../gywm/">爱心使者团</a> &gt; <a href="../gywm/gsjj">部门简介</a></li><li class="current_location_2">部门简介</li></ul></div>
<div class="sublanmu_box sublanmu_box_647">
<div class="sublanmu_content sublanmu_content_introduct"><div class="sublanmu_content sublanmu_content_introduct" id="Content">
	<p>
	<strong>秘书处</strong><br />
	<p>&nbsp;&nbsp;&nbsp;秘书处是一个凝聚的部门，一个温馨的家庭，秘书处是整个使者团的大管家，是各个部门之间沟通的纽带和桥梁。在秘书处，我们负责把各种消息通过短信的形式通知各部门，提前让大家做好准备。我们协助各部门完成各种活动，用相机记录下每一个精彩瞬间。我们负责活动结束后新闻稿的审查和完善。总而言之，学专会的每一个活动都少不了我们小秘书的身影。在这里，你可以学到很多知识，可以变得更加细心，耐心；在这里，你可以交到好朋友，可以感受到家的温暖。</p>
	<strong>宣传部</strong><br />
	<p>&nbsp;&nbsp;&nbsp;主要负责使者团大小活动的宣传工作。第四届爱心使者团宣传部保留了传统的手绘海报宣传方式，完善了电脑绘制（PS）海报的宣传方式，创新了网络线上宣传方式，努力做到宣传度达到100%。积极配合各部门的工作，与院团各部门保持良好关系与氛围，保质保量的完成海报、横幅、宣传单的制作，保证宣传工作的到位；</p>
	<strong>培训部</strong><br />
	<p>&nbsp;&nbsp;&nbsp;培训部主要负责软件学院所有资助对象的志愿服务的管理和监督工作，以及爱心培训会，包括PPT、PS等计算机专业技能，同时还负责资助对象志愿服务时长的统计，并定期发布时常统计表，监督所有资助对象的志愿服务工作是否如实完成，提醒服务时常不足的资助对象，帮助他们完成定期任务 </p>
	<strong>交流部</strong><br />
	<p>培训部是一个有爱的小家，不仅有小鲜肉学长，还有两位美丽的学姐。欢迎亲爱的学弟学妹加入我们培训部呦~策划不会不是问题，办公软件不会用也不是问题，只要你态度认真，工作负责，培训部随时欢迎你的到来！亲爱的学弟学妹们还在等什么，快到碗里来呦~我们主要负责与校团以及其他分团之间的联系，配合好校团安排相应的工作与任务，将资助政策贯彻到学院里。</p>
	<strong>活动部</strong><br />
	<p>&nbsp;&nbsp;&nbsp; 活动部是一个有爱的大家庭，主要负责各类活动的举办，如图书漂流、资助对象见面会等活动，为资助对象提供了精神资助的平台，获得了大家的认可。主要负责活动的策划、组织以及监督工作，为整个活动顺利进行打好铺垫，做好活动的任务分工，使所有成员有任务可做，并且做到在办活动时成员的工作没有冲突，监督整个活动流程，以及成员的任务完成情况，及时提醒以确保活动顺利进行。</p>
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