<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>学生会介简</title>
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
  <li id="sl647"><a href="xsh.jsp" class="sla647" style="line-height:28px; font-size:14px; color:#666;font-weight:normal;">学生会简介</a></li>
  <li id="sl648"><a href="xsh-bm.jsp" class="sla648" style="font-weight:bold;color:#11578B">部门简介</a></li>

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
<div class="current_location current_location_647"><ul>
  <li class="current_location_1">当前位置：<a href=/>首页</a> &gt; <a href="../gywm/">学生会</a> &gt; <a href="../gywm/gsjj">部门简介</a></li>
  <li class="current_location_2">部门简介</li>
</ul></div>
<div class="sublanmu_box sublanmu_box_647">
<div class="sublanmu_content sublanmu_content_introduct"><div class="sublanmu_content sublanmu_content_introduct" id="Content" >
	<p>
		信息与软件工程学院学生会由主席团领导，设置秘书处、文艺部、体育部、宣传部、学研部、生活部、女生部、民族部八个部门。<br />
		<b>主席团：</b><div style="text-indent:2em;">设主席1名，副主席2名，秘书长1名。主席团是学生会运作的核心，全面主持学生会的日常工作。</div><br />
		<b>秘书处：</b><div style="text-indent:2em;">旨在更快捷、更高效地完成学生会的日常工作，主要负责整理各部门上交的计划资料，报销活动经费，人员考勤、会议通知及记录，活动中进行拍照摄像并及时发布新闻稿。协调各部门工作，保证学生会工作顺利进行。</div><br />
 		<b>文艺部：</b><div style="text-indent:2em;">配合学校学院开展各种文艺性活动为主的服务性组织。不论春夏秋冬，日月交替，学校里都会回响着美妙的音乐和激荡着同学们的热情。“在文艺部，你不一定要很有才艺，但你一定很有才华！”在这里，有寝室风采大赛、元旦晚会、全能歌手大赛、红歌会合唱比赛等重大的文艺项目，有很多与其他部门合作完成的各项丰富的活动。</div><br />
		<b>体育部：</b><div style="text-indent:2em;">作为学院的活动型部门，在院学生会的带领下，一直秉承着“将视野拓展到学习之外，将运动与学习相结合”的理念，积极开展各类体育活动，同时响应各部门并协调工作，丰富同学们的课外生活。通过增强和院系联络、积极参与“学士杯”足球赛、组织校运动会等“引领群众体育”；举办“迎新杯”篮球赛，加强新生与老生的交流，“服务竞技体育”。</div><br />
		<b>宣传部：</b><div style="text-indent:2em;">作为学生的支持型和服务型部门，是展示才华与创意的平台，重点关注大型活动和重要事务性工作的宣传任务。担负着对学生会大型活动的宣传设计及学生会形象的整体塑造等宣传工作。 由宣传部举办的户外拓展生活服务类活动“男生女生打酱油”，本着增进同学情谊的初衷也早已成为宣传部的特色。</div><br />
		<b>学研部：</b><div style="text-indent:2em;">学研部一向秉承“思辩、尊师、引领、超越”的理念，一直致力于将自身打造为引领学生学习，培育科研学术氛围，促进良好学风建设的有效载体。本着"全心全意为同学服务"的宗旨，学研部积极开展各类学科竞赛，并在实践中打造了软件学生会的特色活动“汉字中华大赛”，极大促进了软件学子综合素质的提高。</div><br />
		<b>生活部：</b><div style="text-indent:2em;">秉承行胜于言之风，以其细腻、贴心、温暖存在于每一位学子的求学生活中，服务于同学们的衣食住行，鼓励同学们树立积极的生活态度，培养健康的生活方式，默默为学院建设和满足同学们的需求而不懈努力。</div><br />
		<b>女生部：</b><div style="text-indent:2em;">面向女生，服务女生，针对学院女生特点，结合女生需要，安排特色讲座，为女生同学解决实际问题；有效地开展一系列与女生有关的活动，丰富女生的文化生活的同时加强男生女生之间的交流，为促进女生发挥所长，展现自我魅力的提供一个平台。</div><br />
		<b>民族部：</b><div style="text-indent:2em;">本着“促进各民族同学的团结”为原则协助学校各级部门做好各民族同学的管理工作。“五十六个民族，五十六枝花”民族部给每个民族的同学都带来了如家般的关爱和温暖。针对民族风俗的不同与差异，民族部为各民族同学展示他们的民族风情提供一个绚丽的舞台，为各民族同学的沟通创造了一个积极的平台。

	</p>
</div></div>
</div>
</div>
 <div class="clear main_box_inner_bottom"></div>
</div>
</div></div>

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