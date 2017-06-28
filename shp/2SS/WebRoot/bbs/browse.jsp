<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>  
<%@ page import="java.util.Collection,java.util.Iterator"%>
<%@ page import="com.BBS.entity.BBSMsg"%>
<%@ page import ="com.BBS.dao.BBSMsgMgr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS-浏览</title>
<style type="">

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
  	 <ul class="sf-menu" id="nav" style="width:1300px;background:#000;text-align:center;padding-left:130px;z-index:80;">
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
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=板长寿司2010罗志祥舞法舞天北京演唱会 src="images/01.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=张学友2011巡回演唱会北京站 src="images/02.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=爱无止境Air Supply空气补给站北京演唱会 src="images/03.jpg"></A></LI>
  <LI><A href="http://www.mobanwang.com/" target=_blank><IMG title=2010迈克学摇滚中国巡演北京演唱会  src="images/04.jpg"></A></LI>
</UL>
<DIV class=prev>上一张</DIV>
<DIV class=next>下一张</DIV></DIV>
		</div>


<!-----------------------------------新闻页面--------------------------------------->
<body>
		
				<center>
<table >
	<tr>
		<td width="1000px;" bgcolor="#9090ef" height="35" align=center><b><font
			color="#FFFFFF">浏览帖子</font></b></td>
	</tr>
</table>
<table width="78%" class="t1" style="width:1000px;line-height:48px;">
	<%if (request.getAttribute("c") == null) {

	%>
	<tr>
		<td width="75%" colspan=8 bgcolor="#FCFCFC" align=center>还没有任何帖子。</td>
	</tr>
	<%} else {
				Collection c = (Collection) request.getAttribute("c");
				if (c == null) {

				%>
	<tr>
		<td width="75%" colspan=8 bgcolor="#FCFCFC" align=center>还没有任何帖子。</td>
	</tr>
	<%}
    else {
       int totalPageNum = ((Integer) (request.getAttribute("totalPageNum"))).intValue();
					int currentPage = 1;
					if (request.getParameter("page") != null) {
						currentPage = Integer.parseInt(request.getParameter("page"));
					}
					Iterator iterator = c.iterator();
%>
	 <tr>
		<td width="75%" colspan=8 align=right height="20" bgcolor="#EFEFEF"><%if (totalPageNum > 1) {%>
		<a href="BrowseServlet?page=1">首页</a>|<a
			href="BrowseServlet?page=<%=currentPage>1?currentPage-1:1 %>">上一页</a>|<a
			href="BrowseServlet?page=<%=currentPage<totalPageNum?currentPage+1:totalPageNum %>">下一页</a>|<a
			href="BrowseServlet?page=<%=totalPageNum%>">末页</a> <%}%>
	</tr> 
                   <%
						while (iterator.hasNext()) {
						BBSMsg msg = (BBSMsg) iterator.next();

					%>
	<tr>
		<td width="75%">
		<hr size=1 color=#99ccff>
		<% for (int i = 0; i <msg.getLevel(); i++) {%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%}%>
		<a href="ReadServlet?id=<%=msg.getItem_id()%>">
		<img src="image/<%=msg.getFace()%>.GIF" border="0" ><span ><%=msg.getItem_title()%></span>-&nbsp;<span><%=msg.getAuthor()%>></span>&nbsp;<span><%=msg.getStrCompose_date()%></span><span>(<%=msg.getBrowsed_times()%>次点击)</span>
			<span><%if((msg.getIs_origional()==1)&&(msg.getLatest_replyer()!=null)&&(!msg.getLatest_replyer().equals(""))){%></span>
			<span>[最新回复:<%=msg.getLatest_replyer()%></span>&nbsp;<span><%=msg.getStrLatest_reply_date()%></span>]<%}%>
			</td>
	</tr>  <%}%>
	<form name="form1" method="get">
			<tr>
				<td width="" colspan=5 align=right bgcolor="#EFEFEF"><%for (int i = 1; i <= totalPageNum; i++) {%>
				<a href="BrowseServlet?page=<%=i %>">[<%=i%>]</a> <%}

					%>共[<%=totalPageNum%>]页 <input type="text"
					size="2" name="page" value=""><input type="submit" name="go"
					value="Go"></td>
			</tr>
			</form>
	<%}
			}

			%> 
	<tr>
		<td width="75%" colspan=8 align=center height="35" bgcolor="#EFEFEF">
		   <%//如果用户已经登录，则允许撰写留言：
			if (session.getAttribute("userName") != null) {%> [<a
			href="bbs/compose.jsp">发布帖子</a>] <%} else {
			%>[<a href="../login2.jsp">登录</a>] <%}%>
	</tr>
</table>
</center>

		
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