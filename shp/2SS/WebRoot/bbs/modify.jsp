<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>  
<%@ page import="com.BBS.entity.BBSMsg"%>
<%@ page import="com.BBS.servlet.Encoder"%>
<%@ page import ="com.BBS.dao.BBSMsgMgr" %>
<%if (session.getAttribute("userName") == null) {
				response.sendRedirect("../login2.jsp");
			}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS-修改</title>
<style type="">
.t1 {
	FONT-SIZE: 10.5pt; WORD-BREAK: break-all; BORDER-COLLAPSE: collapse; TEXT-ALIGN: justify
	#roll{height:350px; margin:10px auto;overflow:hidden;list-style:none;}
}
.btn { background: #9090ef; padding: 5px 25px; color: #fff; text-decoration: none; cursor: pointer;
		
}
.btn:hover { background-color: #a00; }
</style>
<style type='text/css'>
.feedback_table{border:1px solid #eee}
.feedback_table td{border:1px solid #eee;padding:5px}
.feedback_table td .bt{color:white;}
</style>
<link rel="stylesheet" type="text/css" href="css/box.css">
	<link href="css/focus.css" type="text/css" rel="stylesheet" />
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/function.js" type="text/javascript"></script>
	<link rel="shortcut icon" href="logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/sooperfish.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/sooperfish-theme-large.css" media="screen">
<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
<LINK href="css/bbsslide.css" type=text/css rel=stylesheet>
<SCRIPT src="js/jquery-1.4.2.min.js" type=text/javascript></SCRIPT>
<SCRIPT src="js/bbsslide.js" type=text/javascript></SCRIPT>
<script language="JavaScript"><!--
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
</head>
<body>
<div id="top">
		<div class="logo"></div>
		<div class="top_content">
			<div  class="top_login"><a href="login2.jsp">[登录]</a>|<a href="register.jsp">[注册]</a>|<a href="findpass.jsp">[找回密码]</a></div>
			<div class="out_login"><a href="logout.jsp">【退出当前用户】</a></div>
		</div>
	</div>
<!------------------------------------导航------------------------------------------>
<div class="top_nav">
  	 <ul class="sf-menu" id="nav" style="width:1210px;background:#000;text-align:center;padding-left:130px;z-index:80;">
	<li>
      <a href="showAllNewsServlet">首页</a>
	</li>
      <li>
      <a href="tw/tw.jsp">团委</a>
      <ul>
        <li>
          <a href="tw/tw.jsp">团委简介</a>
          <a href="tw/tw-bm.jsp">部门简介</a>
          <ul>
            <li><a href="tw/tw-bm.jsp">秘书处</a></li>
            <li><a href="tw/tw-bm.jsp">组织部</a></li>
            <li><a href="tw/tw-bm.jsp">新闻中心</a></li>
            <li><a href="tw/tw-bm.jsp">宣传部</a></li>
            <li><a href="tw/tw-bm.jsp">红烛实践部</a></li>
          </ul>
        </li>
      </ul>
    </li> 
    <li>
      <a href="xsh/xsh.jsp">学生会</a>
      <ul>
        <li>
          <a href="xsh/xsh.jsp">学生会简介</a>
          <a href="xsh/xsh-bm.jsp">部门简介</a>
          <ul>
            <li><a href="xsh/xsh-bm.jsp">秘书处</a></li>
            <li><a href="xsh/xsh-bm.jsp">文艺部</a></li>
            <li><a href="xsh/xsh-bm.jsp">体育部</a></li>
            <li><a href="xsh/xsh-bm.jsp">宣传部</a></li>
            <li><a href="xsh/xsh-bm.jsp">学研部</a></li>
            <li><a href="xsh/xsh-bm.jsp">生活部</a></li>
            <li><a href="xsh/xsh-bm.jsp">女生部</a></li>
            <li><a href="xsh/xsh-bm.jsp">民族部</a></li>
          </ul>
        </li>
      </ul>
    </li>   
	<li>
      <a href="xz/xz.jsp">学专会</a>
      <ul>
        <li class="small_nav">
          <a href="xz/xz.jsp">学专会简介</a>
          <a href="xz/xz-bm.jsp">部门简介</a>
          <ul>
            <li><a href="xz/xz-bm.jsp">秘书处</a></li>
            <li><a href="xz/xz-bm.jsp">宣传部</a></li>
            <li><a href="xz/xz-bm.jsp">竞赛部</a></li>
            <li><a href="xz/xz-bm.jsp">科研中心</a></li>
            <li><a href="xz/xz-bm.jsp">IT实践部</a></li>
            <li><a href="xz/xz-bm.jsp">ACM部</a></li>
          </ul>
        </li>
      </ul>
    </li>	
	<li>
      <a href="ax/ax.jsp">爱心使者团</a>
      <ul>
        <li>
          <a href="ax/ax.jsp">爱心使者团简介</a>
          <a href="ax/ax.jsp">部门简介</a>
          <ul>
            <li><a href="ax/ax.jsp">秘书处</a></li>
            <li><a href="ax/ax.jsp">宣传部</a></li>
            <li><a href="ax/ax.jsp">交流部</a></li>
            <li><a href="ax/ax.jsp">活动部</a></li>
            <li><a href="ax/ax.jsp">培训部</a></li>
          </ul>
        </li>
      </ul>
    </li>	
    <li><a href="#">学生服务</a>
				<ul>
					<li>
					   <a href="file/upload.jsp">上传资料</a> 
					   <a href="ListFileServlet">下载资料</a>   
					   <a href="showByPageServletMore">更多活动信息</a>
				</ul>
			</li>
			<li><a href="bbs/compose.jsp">活动论坛</a>
				<ul>
					<li>
					     <a href="bbs/compose.jsp">发布帖子</a>
					     <a href="bbs/browse.jsp">浏览帖子</a>
					</li>
			
				</ul>
			</li>
			<li><a href="admin/index.jsp">管理员管理</a>
				<ul>
					<li><a href="pages/add.jsp">教室借用</a> 
					    <a href="pages/add.jsp">失物招领</a><a href="../pages/add.jsp">添加活动</a>
						<a href="showByPageServlet">管理活动</a>
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
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/04.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/03.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/02.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/01.jpg"></A></LI>
</UL>
<DIV class=prev>上一张</DIV>
<DIV class=next>下一张</DIV></DIV>
		</div>

		<div class="body_news" style="position:relative; padding-top:0px;margin-top:0px;">
<div align=center>
<form name="frmCompose" method="POST" action="ModifyServlet"
	onSubmit="javaScript:return validateCompose();">
<table border="0" width=960 bgcolor="#efefef" cellspacing="0"
	cellpadding="0" class="feedback_table">
	<%if (request.getAttribute("msg") == null) {%>
	<tr>
		<td width="100%" align=center colspan="2" height="30"
			bgcolor="#9fafef"><font color="#FFFFFF"><b>不存在该帖子！</b></font></td>
	</tr>
	<%} else {
				BBSMsg msg = (BBSMsg) request.getAttribute("msg");

				%>
	<tr>
		<td width="100%" align=center colspan="2" height="30"
			bgcolor="#9090ef"><font color="#FFFFFF"><b>修改帖子</b></font></td>
	</tr>
	<tr>
		<td width="20%" bgcolor="#FCFCFC" align=right >标题：&nbsp;</td>
		<td width="80%" bgcolor="#FCFCFC">
        <input type="text" name="MB_TITLE" size="35" style="width:95%;height:50px;font-size:15px;" value="<%=msg.getItem_title() %>"></td>
</tr>
<tr>
	<td width="20%" bgcolor="#FCFCFC" align=right valign="top">内容：&nbsp;</td>
	<td width="80%" bgcolor="#FCFCFC"><textarea  name="MB_CONTENT"
 style="width:95%;height:300px;font-size:15px;" rows=15 wrap=virtual cols=70><%=Encoder.returnBackToBr(msg.getItem_content())%></textarea></td>
</tr>
<tr>
		<td width="20%" bgcolor="#FCFCFC" align=right valign="top">表情：&nbsp;</td>
		<td width="80%" bgcolor="#FCFCFC"><%for (int i = 1; i <= 40; i++) {
				%> 
<INPUT type="radio" value="<%=i %>" name="face" <%if(i==msg.getFace()){ %>checked="checked"<%} %>><img src="image/<%=i %>.GIF"> <%if (i % 8 == 0) {
					out.println("<br>");
				}
			}
			%></td>
	</tr>
<tr>
	<td width="20%" bgcolor="#FCFCFC" align=right>修改人：&nbsp;</td>
	<td width="80%" bgcolor="#FCFCFC"><font color=#FF0000><%=session.getAttribute("userName")%></font>
	</td>
</tr>
<tr>
	<td width="100%" align=center colspan="2" height="50"><input
		type="hidden" name="id" value="<%=msg.getItem_id() %>"> <input type="submit" class="btn"
		value="提交" name="submit">&nbsp;&nbsp; <input type="reset" class="btn" value="重置"
		name="reset"></td>
</tr>
<%}

		%>
</table>
</form>
</div></div>
</body>
</html>
