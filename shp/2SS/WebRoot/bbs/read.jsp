<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>  
<%@ page import="com.BBS.entity.BBSMsg"%>
<%@ page import="java.util.Collection,java.util.Iterator"%>
<%@ page import ="com.BBS.dao.BBSMsgMgr" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS-阅读</title>
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

<script type="text/javascript">
$(document).ready(function() {
$('ul.sf-menu').sooperfish();
});
</script>
<script type="text/javascript">
function confirmDelete(id){
if(window.confirm("您真的要彻底删除这些留言吗?")){
window.location="DeleteServlet?id="+id;
}
}
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
					    <a href="pages/add.jsp">失物招领</a><a href="pages/add.jsp">添加活动</a>
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
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/05.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG  src="images/06.jpg"></A></LI>
</UL>
<DIV class=prev>上一张</DIV>
<DIV class=next>下一张</DIV></DIV>
		</div>
		<div class="body_news" style="position:relative;">
<div align=center>
<table  border="0" width="960px" class="feedback_table" 
	bordercolorlight="#000000" bordercolordark="#FFFFFF">
	<tr>
		<td width="75%" colspan=3 bgcolor="#9090ef" height="35" align=center><b><font
			color="#FFFFFF">阅读帖子</font></b></td>
	</tr>
	<tr>
		<td colspan=3 align=center bgcolor="#EFEFEF">[<a href="bbsIndex.jsp">回主列表</a>]
		<%if (session.getAttribute("userName") == null) {

			%>[<a href="../login2.jsp">登录</a>] <%}%></td>
	</tr>
	<%if (request.getAttribute("c") == null) {

			%>
	<tr>
		<td width="75%" colspan=3 bgcolor="#FCFCFC" align=center>还没有任何帖子。</td>
	</tr>
	<%} else {
				Collection c = (Collection) request.getAttribute("c");
				Iterator iterator = c.iterator();
				while (iterator.hasNext()) {
					BBSMsg msg = (BBSMsg) (iterator.next());

					%>

	<tr>
		<td align=right bgcolor="#FCFCFC">作者：&nbsp;</td>
		<td align=left bgcolor="#FCFCFC"><img src="image/<%=msg.getFace()%>.GIF" border="0"><%=msg.getAuthor()%><%=(msg.getLevel() == 0 ? "发表" : "回复")%>于<%=msg.getStrCompose_date()%></td>
		<td align=right bgcolor="#FCFCFC"><%if(msg.getLevel()==1){%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<a href="../ReadServlet?id=<%=msg.getItem_id()%>">查看回复</a>]<%} %>
		[<a
			href="bbs/reply.jsp?fatherid=<%=msg.getItem_id() %>&title=<%=msg.getItem_title() %>">回复</a>] <%
					//如果是一个特定的用户，这里是“admin”,则拥有删除的权利：
					if ("admin".equals(session.getAttribute("userName"))) {%>&nbsp;&nbsp;&nbsp;
		[<a href="javascript:confirmDelete(<%=msg.getItem_id() %>)">删除</a>] <%}
					//如果是当前留言的作者，则拥有修改的权利：
					if (msg.getAuthor()
							.equals(session.getAttribute("userName"))) {%>&nbsp;&nbsp;&nbsp;
		[<a href="ModifyServlet?id=<%=msg.getItem_id() %>">修改</a>]<%}%>
		</td>
	</tr>
	<tr>
		<td bgcolor="#FCFCFC" align=right>标题：&nbsp;</td>
		<td bgcolor="#FCFCFC" colspan=2 align=left><%=msg.getItem_title()%></td>
	</tr>	
	<tr>
		<td align=right valgin=top bgcolor="#FCFCFC">内容：&nbsp;</td>
		<td align=left colspan=2 bgcolor="#FCFCFC"><%=msg.getItem_content()%></td>
	</tr>
	<tr>
		<td colspan=3 align=center bgcolor="#EFEFEF"></td>
	</tr>
	
	<%}%>
	<tr>
		<td colspan=3 align=center bgcolor="#EFEFEF">[<a href="bbsIndex.jsp">回主列表</a>]
		<%if (session.getAttribute("userName") == null) {

				%>[<a href="../login2.jsp">登录</a>] <%}%></td>
	</tr>
	<%}%>
</table>
</div></div>
</body>
</html>
