<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.BBS.entity.BBSMsg"%>
<%@ page import ="com.BBS.dao.BBSMsgMgr" %>
<%if (session.getAttribute("userName") == null) {
		response.sendRedirect("../login2.jsp");
}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS-撰写</title>
<style type="">
.t1 {
	FONT-SIZE: 10.5pt; WORD-BREAK: break-all; BORDER-COLLAPSE: collapse; TEXT-ALIGN: justify
	#roll{height:350px; margin:10px auto;overflow:hidden;list-style:none;}
}
.btn { background: #9090ef; padding: 5px 25px; color: #fff; text-decoration: none; cursor: pointer;
		
}
.btn:hover { background-color: #a00; }
</style>
<link rel="stylesheet" type="text/css" href="../css/box.css">
	<link href="../css/focus.css" type="text/css" rel="stylesheet" />
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/function.js" type="text/javascript"></script>
	<link rel="shortcut icon" href="../logo.ico" type="image/x-icon">
    <link rel="icon" href="../logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../css/sooperfish.css" media="screen">
<link rel="stylesheet" type="text/css" href="../css/sooperfish-theme-large.css" media="screen">
<script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
<script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
<LINK href="../css/bbsslide.css" type=text/css rel=stylesheet>
<SCRIPT src="../js/jquery-1.4.2.min.js" type=text/javascript></SCRIPT>
<SCRIPT src="../js/bbsslide.js" type=text/javascript></SCRIPT>
<script language="JavaScript">

<!--
function validateCompose(){ 
	var MB_TITLE = document.frmCompose.MB_TITLE.value;
	var MB_CONTENT = document.frmCompose.MB_CONTENT.value;
	if (MB_TITLE ==""){
		alert("必须填写标题！");
		return false;
	}
	if (MB_CONTENT ==""){
		alert("必须填写内容！");
	return false;
	}
}
-->
</script>
<style type='text/css'>
.feedback_table{border:1px solid #eee}
.feedback_table td{border:1px solid #eee;padding:5px}
.feedback_table td .bt{color:white;}
</style>
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
<div class="top_nav">
  	 <ul class="sf-menu" id="nav" style="width:1210px;background:#000;text-align:center;padding-left:130px;z-index:80;">
	<li>
      <a href="../showAllNewsServlet">首页</a>
	</li>
      <li>
      <a href="../tw/tw.jsp">团委</a>
      <ul>
        <li>
          <a href="../tw/tw.jsp">团委简介</a>
          <a href="../tw/tw-bm.jsp">部门简介</a>
          <ul>
            <li><a href="../tw/tw-bm.jsp">秘书处</a></li>
            <li><a href="../tw/tw-bm.jsp">组织部</a></li>
            <li><a href="../tw/tw-bm.jsp">新闻中心</a></li>
            <li><a href="../tw/tw-bm.jsp">宣传部</a></li>
            <li><a href="../tw/tw-bm.jsp">红烛实践部</a></li>
          </ul>
        </li>
      </ul>
    </li> 
    <li>
      <a href="../xsh/xsh.jsp">学生会</a>
      <ul>
        <li>
          <a href="../xsh/xsh.jsp">学生会简介</a>
          <a href="../xsh/xsh-bm.jsp">部门简介</a>
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
	<li>
      <a href="../xz/xz.jsp">学专会</a>
      <ul>
        <li class="small_nav">
          <a href="../xz/xz.jsp">学专会简介</a>
          <a href="../xz/xz-bm.jsp">部门简介</a>
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
	<li>
      <a href="../ax/ax.jsp">爱心使者团</a>
      <ul>
        <li>
          <a href="../ax/ax.jsp">爱心使者团简介</a>
          <a href="../ax/ax.jsp">部门简介</a>
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
	<div style="height:20px;"></div>
		<div>
			<DIV id=imgPlay>
<UL class=imgs id=actor>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=板长寿司2010罗志祥舞法舞天北京演唱会 src="../images/03.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=张学友2011巡回演唱会北京站 src="../images/04.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=爱无止境Air Supply空气补给站北京演唱会 src="../images/01.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=2010迈克学摇滚中国巡演北京演唱会  src="../images/03.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=2010张杰北京演唱会 src="../images/05.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=海上良宵”蔡琴2010北京演唱会 src="../images/06.jpg"></A></LI>
</UL>
<DIV class=prev>上一张</DIV>
<DIV class=next>下一张</DIV></DIV>
		</div>


<!-----------------------------------新闻页面--------------------------------------->
<body>
		<div class="body_news" style="position:relative;">
<div align=center>
<form name="frmCompose" method="POST" action="../ComposeServlet"
	onSubmit="javaScript:return validateCompose();">
<table border="0" width="960px" bgcolor="#efefef" cellspacing="0"
	cellpadding="0" class="feedback_table" >
	<tr style="margin-top:20px;">
		<td width="100%" align=center colspan="2" height="30"
			bgcolor="#9090ef"><font color="#FFFFFF"><b>回复帖子</b></font></td>
	</tr>
	<tr>
		<td width="10%" bgcolor="#FCFCFC" align=right>标题：&nbsp;</td>
		<td width="90%" bgcolor="#FCFCFC"><input type="text" name="MB_TITLE"
			size="35" maxlength="30" style="width:95%;height:50px;font-size:15px;"></td>
	</tr>
	<tr>
		<td width="10%" bgcolor="#FCFCFC" align=right valign="top">内容：&nbsp;</td>
		<td width="90%" bgcolor="#FCFCFC"><textarea rows="8" name="MB_CONTENT"
			cols="34" id="text" style="width:95%;height:300px;font-size:15px;" rows=15 wrap=virtual cols=70>
</textarea></td>
	</tr>
	<tr>
		<td width="10%" bgcolor="#FCFCFC" align=right valign="top">表情：&nbsp;</td>
		<td width="90%" bgcolor="#FCFCFC"><%for (int i = 1; i <= 40; i++) {

				%> <INPUT type="radio" value="<%=i %>" name="face" <%if(i==1){ %>checked="checked"<%} %> />
				<img src="../image/<%=i %>.GIF" /> <%if (i % 8 == 0) {
					out.println("<br>");
				}
			}

			%></td>
	</tr>
	<tr>
		<td width="20%" bgcolor="#FCFCFC" align=right>回复人：&nbsp;</td>
		<td width="80%" bgcolor="#FCFCFC"><font color=#FF0000><%=session.getAttribute("userName")%></font>
		</td>
	</tr>
	<tr>
		<td width="100%" align=center colspan="2" height="50"><input
			type="hidden" value="Compose" name="action"> <input class="btn" type="submit"
			value="提交" name="submit">&nbsp;&nbsp; &nbsp;&nbsp; <input class="btn" type="reset" value="重新编写"
			name="reset" class="bt"></td>
	</tr>
</table>
</form>
</div>

		
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
