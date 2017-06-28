<%@ page language="java" contentType="text/html; charset=utf-8"  import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="com.New.util.DateUtil" %>
<%@ page import="com.New.servlet.*" %>

<%
    //规定只有管理员身份才能添加
    if(!"admin".equals(session.getAttribute("username"))){
        response.sendRedirect("../showAllNewsServlet");
    }
%>	   			   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transiti‘onal//EN">
<html>
<head lang="en">
	<title>添加信息</title>
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
	<script type="text/javascript" src="../js/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.10.4.min.js"></script>
<script type="text/javascript" src="../js/responsive-layered-slider.js"></script> 
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
				style="width:1160px;background:#000;text-align:center;padding-left:180px;z-index:99;">
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
	<div class="sim-slider" data-width="2550" data-height="500" data-animation="250" data-current="true" data-progress="true" style="background:url(../3.jpg);margin-bottom:30px;">

		<div class="sim-slider-inner">

			<div class="sim-slider-slide">
			<div class="sim-slider-layer" data-effect="fadeInLeft" data-width="600" data-height="455" data-left="160" data-top="40"><img src="../images/layer_0027.png" /></div> 
			<div class="sim-slider-layer" data-effect="fadeInUp" data-width="800" data-height="460" data-left="850" data-top="34"><img src="../images/layer_0026.png" /></div> 
			<div class="sim-slider-layer" data-effect="fadeInRight" data-width="600" data-height="455" data-left="1750" data-top="40"><img src="../images/layer_0028.png" /></div> 
			</div>
 
  
		</div>  
		
	</div>
<!-----------------------------------新闻页面--------------------------------------->
		<div class="body_news">
  <div class="main_box main_box_style1" style="width:900px;padding-left:50px;">
 <div class="main_box_inner">

   <div class="main_box_inner_right" style="width:900px;float:left;">
<div class="current_location current_location_668"><ul><li class="current_location_1">当前位置：<a href=../showAllNewsServlet>首页</a> &gt; <a href="">学生服务</a> &gt; <a href="add.jsp">添加活动</a></li><li class="current_location_2">添加活动</li></ul></div>
<div class="sublanmu_box sublanmu_box_668">
<div class="sublanmu_content sublanmu_content_introduct">
<script type="text/javascript" src="../js/zdyform.js"></script>
<style type='text/css'>
.feedback_table{border:1px solid #eee}
.feedback_table td{border:1px solid #eee;padding:5px}
.feedback_table td .bt{color:white}
</style>

<form action="AddNewsServlet" method="post" onsubmit=disablebutton();>					
<table border=0 cellpadding=0 cellspacing=0  align=center width=95% class="feedback_table"><tr>
  <td align=right><b>分 类</b> <span style="color:#ff0000">*</span></td>
  <td><select name="type" ><option value="0" selected>--选择板块--</option>
    <option value="学生会">学生会</option>
    <option value="团委">团委</option>
	<option value="通知公告">通知公告</option>
	<option value="教室借用">教室借用</option>
	<option value="爱心使者团">爱心使者团</option>	
    <option value="失物招领">失物招领</option>
    <option value="学专会">学专会</option>


</select></td></tr>
<tr><td align=right><label for="author"><b>活动标题 </b><span style="color:#ff0000">*</span></label></td><td><input type="text" name="title" maxlength="50" ></td></tr>
</tr>
<tr>
	<td align=right>
		<label for="text"><b>活动内容 </b></label><span style="color:#ff0000">*</span>
	</td>
		<td type="hidden" name="alter">	
			<textarea name="content" id="text" style="width:95%;height:300px" rows=15 wrap=virtual cols=70>
			</textarea>
		</td>
		<object id=mess style="DISPLAY:none" type=text/x-scriptlet height="400px" width="100%"
							 data=html_editor.htm align="right">
		</object>
		<tr><td align=right><label for="author"> <span style="color:#ff0000"></span></label></td><td><input type="hidden" name="create_date" value="<%=DateUtil.formatDateTime(new Date())%>"/></td></td></tr>
</tr>
<tr><td colspan=2 align=center><input type="hidden" name="checked" value="0">
		<input type="hidden" name="mustfield" value="title,email,content,"><input type="hidden" name="musttype" value="text,text,textarea,">
		<input input type="submit"  name="submit" id="submit" value="提交" class="bt"  />
        <input type="reset" name="reset" id="reset" value="清除" onClick="myreset()" class="bt">
</td></tr>
</table>
</form>
<script type="text/javascript">
function set_feedback()
{
document.forms["feedback"].mailto.value="";
document.forms["feedback"].mailreply.value="";
document.forms["feedback"].mailsubject.value="";
document.forms["feedback"].mailbody.value="";
return Check_ZdyForm("feedback");
}

function feedback_zdycheck(){
return true;
}
</script>
</div>
</div></div>
 </div>
 <div class="clear main_box_inner_bottom"></div>
</div>
	</div>
<!-----------------------------------页脚--------------------------------------->
<div id="footing">
		<div class="bottom_content">
				<span class="foot-maker" style="color:#fff;"><a href="http://xxhb.nenu.edu.cn"  >维护：信息化管理与规划办公室</a></span><span style="color:#fff;"class="foot-maker">地址：吉林省长春市人民大街(130024)</span>
            </p>
		</div>
		<div class="bottom_copyright">
			<p>
                <span  class="foot-copy">版权所有©东北师范大学&nbsp;&nbsp;&nbsp;&nbsp;吉ICP备05004942</span>
		</div>
	</div>
	
  </body>
</html>