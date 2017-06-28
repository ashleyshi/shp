<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>团委部门简介</title>
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
<div class="current_location current_location_647"><ul><li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="../gywm/">团委</a> &gt; <a href="../gywm/gsjj">部门简介</a></li><li class="current_location_2">部门简介</li></ul></div>
<div class="sublanmu_box sublanmu_box_647">
<div class="sublanmu_content sublanmu_content_introduct"><div class="sublanmu_content sublanmu_content_introduct" id="Content">
	<p>
	<strong>秘书处</strong><br />
	<p>&nbsp;&nbsp;&nbsp; 团委秘书处作为一股中坚力量，作为老师和同学，团委各个部门以及部门成员之间沟通的桥梁与纽带。起着上传下达作用
	&nbsp;&nbsp;&nbsp; 负责收集整理团委所有活动的相关资料（照片、策划书、工作计划、工作总结）打理日常事物，收报发票，
	微信公共平台的建设。犹如团委的大管家，是团委浓墨重彩的一笔，与整个团委密不可分。</p>
	<strong>组织部</strong><br />
	<p>&nbsp;&nbsp;&nbsp;作为团委的核心部门，“密切关注团员青年成才成长”是组织部对工作不变的态度。我们的工作很杂，应为爱不止一种；
	我们的工作很细，因为爱见于细微。统计团员及党员的基本信息及各项相关工作，琐碎却最直接体现这份爱的真切；协助校青马学会开展相关活动，伴你成长，塑而心魄；
	开展纪念“一二·九大学生抗日救亡运动”活动，深沉于心，激昂于外；每月组织评比的团日活动，多彩青春，活泼生动；组织培训团干，这是对这份爱的延续。
	再小的爱，也需用心浇灌。组织部，爱在点滴，爱无止境。 </p>
	<strong>新闻中心</strong><br />
	<p>&nbsp;&nbsp;&nbsp; 新闻中心成立于2014年，隶属于院团委，自成立以来发展迅速，为学院的新闻宣传等工作做出了重要贡献。</p>
	<p>&nbsp;&nbsp;&nbsp; 在这里，你可以第一时间目击学院活动的幕后与现场，并参与各大活动的报道，同时还可以让你参与大型纪实活动的筹备与策划，在这里，你可以定格一幅幅动人的画面：文艺汇演，体育赛事，科研辩论等数不清的精彩均在你的手中掌控。</p>	
	<p>&nbsp;&nbsp;&nbsp; 新闻中心是我院媒体传播的中心，我们的任务不仅是为了做好新闻记者，更是为了打造软件学院新闻中心的独特品牌，传播学院精品文化。</p>
	<strong>宣传部</strong><br />
	<p>&nbsp;&nbsp;&nbsp;信息与软件工程学院团委宣传部是团委对内外进行组织和开展活动的窗口，也是协调团委开展宣传工作的重要职能部门。
	&nbsp;&nbsp;&nbsp;我们的主要工作是做好团委各项活动的前、中、后期宣传，活动的会场布置和学院辩论赛的举办。 
	&nbsp;&nbsp;&nbsp;宣传工作的主要方式是各种宣传海报、彩喷及横幅。</p>
	<strong>红烛实践部</strong><br />
	<p>&nbsp;&nbsp;&nbsp; 红烛实践部隶属于东北师范大学信息与软件工程学院，是校红烛的一个分会。日常工作主要是积极配合我院团委和校红烛的工作，活动主要以志愿服务形式展开</p>
	<p>&nbsp;&nbsp;&nbsp;我们举办的“拥抱春天 播种绿色”植树活动、进社区开展“班助一”活动、面向全院招募各类活动的志愿者，活动累计参加的在校本科志愿者达400人热爱公益，弘扬正能量，红烛实践部的成员一直在努力！</p>
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