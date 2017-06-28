<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
<title>学专会部门简介</title>
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
		<li><a href="xz.jsp">学专会</a>
			<ul>
				<li class="small_nav"><a href="../xz/xz.jsp">学专会简介</a> <a
					href="xz-bm.jsp">部门简介</a>
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
					<div id="nav_128" class="nav_box nav_box_menu">

						<div class="nav_title">
							<span class="nav_sign">学专会</span><span class="nav_more"></span>
						</div>
						<div id="nav_menu_128" class="nav_menu">
							<ul id="rootul_128">
								<li id="sl647"><a href="xz.jsp" class="sla647">学专会简介</a></li>

								<li id="sl649"><a href="xz-bm.jsp" class="sla649">部门简介</a>
								</li>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						shut_allsubnav("rootul_128");
						expand_subnav("sl649", "0");
					</script>

					<div id="nav_129" class="nav_box nav_box_menu">

						<div class="nav_title">
							<span class="nav_sign">联系方式</span><span class="nav_more"></span>
						</div>
						<div class="tel">
							<span>联系电话：0760-22517083</span> <span>传真：0760-86744123</span> <span>QQ：14837715（授权）
								190452532（定制）</span> <span>Email：service#pageadmin.net</span> <span>地址：广东省中山市南头金湾广场B座16号
							</span>
						</div>
						<div id="nav_menu_129" class="nav_menu">
							<ul id="rootul_129"></ul>
						</div>
					</div>
					<script type="text/javascript">
						shut_allsubnav("rootul_129");
						expand_subnav("sl649", "0");
					</script>
				</div>
				<div class="main_box_inner_right">
					<div class="current_location current_location_647">
						<ul>
							<li class="current_location_1">当前位置：<a href= />首页</a> &gt; <a
								href="../gywm/">学专会</a> &gt; <a href="../gywm/gsjj">部门简介</a></li>
							<li class="current_location_2">部门简介</li>
						</ul>
					</div>
					<div class="sublanmu_box sublanmu_box_647">
						<div class="sublanmu_content sublanmu_content_introduct">
							<div class="sublanmu_content sublanmu_content_introduct"
								id="Content">
								<p>
									<strong>秘书处</strong><br />
								<p>&nbsp;&nbsp;&nbsp;
									学专会秘书处成立于2003年，跟随着学专会的诞生一起出生。她是一个凝聚的部门，一个温馨的家庭，秘书处是整个学专会的大管家，是各个部门之间沟通的纽带和桥梁。在秘书处，我们负责把各种消息通过短信的形式通知各部门，提前让大家做好准备。我们协助各部门完成各种活动，用相机记录下每一个精彩瞬间。我们负责活动结束后新闻稿的审查和完善。总而言之，学专会的每一个活动都少不了我们小秘书的身影。在这里，有严谨认真的学霸秘书长，有萌萌哒、时而犯傻但做事认真的3个副秘书长；在这里，你可以学到很多知识，可以变得更加细心，耐心；在这里，你可以交到好朋友，可以感受到家的温暖。
									这就是学专会秘书处，萌萌哒很贴心呦！</p>
								<strong>科研中心</strong><br />
								<p>&nbsp;&nbsp;&nbsp;软件学院科研中心成立于2005年，是在信息与软件工程学院学生专业发展协会的领导下，主要承办国家级大学生创新创业训练计划项目（简称国创）、学校及学院大学生科研立项、“新奥”家曦杯、挑战杯等科研竞赛活动的部门,能够时时刻刻地为学生提供着一个广阔的发展和发挥的平台。同时与校科研中心进行对接，为学生提供服务，为学院的科研事业尽自己的一份力。不要因为是搞科研的就觉得我们刻板，我们同样是一个拥有热情与活力的部门
									@ _ @</p>
								<strong>竞赛部</strong><br />
								<p>&nbsp;&nbsp;&nbsp;
									竞赛部，主要负责开展学院相关专业竞赛，以提高学生的专业素质为目的，开展多个形式多样的比赛。其中，东师理想公司赞助的三项比赛：“理想杯”计算机趣味知识大赛，激发大一新生对专业学习的热情；“理想杯”PPT、PS大赛，鼓励同学将理论运用到实践中去；“理想杯”程序设计、网页设计大赛，增强同学们的动手实践能力。部门还独立承担了科研竞赛说明会，帮助同学进一步了解各项专业竞赛。在竞赛部，你可以开拓视野，培养创新意识，提升专业素养，这里更是个人工作能力的展示平台。</p>
								<strong>宣传部</strong><br />
								<p>&nbsp;&nbsp;&nbsp;学专会宣传部成立于2003年，已经陪伴学专会13年了，主要负责学专会大小活动、比赛的宣传工作。第十三届学专会宣传部保留了传统的手绘海报宣传方式，完善了电脑绘制（PS）海报的宣传方式，创新了网络线上宣传方式，努力做到宣传度达到100%。</p>
								<strong>IT实践部</strong><br />
								<p>&nbsp;&nbsp;&nbsp;
									IT实践部成立于2013年，是一个刚刚成立不久的部门，但是它所负责的比赛却是由来已久。部门期望:
									使同学们多接触一些国内以及国际性的比赛，开阔同学们的眼界，同时提升同学们的能力，为我们软件学院学子创造更多的实践舞台和施展才能的空间。
								</p>
								<p>&nbsp;&nbsp;&nbsp;同时如果发现其他好的校外的比赛，我们会和老师商量，看看是否开设给同学们。</p>
								<strong>ACM部</strong><br />
								<p>&nbsp;&nbsp;&nbsp;学专会宣传部成立于2003年，已经陪伴学专会13年了，主要负责学专会大小活动、比赛的宣传工作。第十三届学专会宣传部保留了传统的手绘海报宣传方式，完善了电脑绘制（PS）海报的宣传方式，创新了网络线上宣传方式，努力做到宣传度达到100%。</p>

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
				href="http://xxhb.nenu.edu.cn">维护：信息化管理与规划办公室</a> </span><span
				style="color:#fff;" class="foot-maker">地址：吉林省长春市净月大街(130024)</span>
			</p>
		</div>
		<div class="bottom_copyright">
			<p>
				<span class="foot-copy">版权所有©东北师范大学&nbsp;&nbsp;&nbsp;&nbsp;吉ICP备05004942</span>
		</div>
	</div>
</body>
</html>