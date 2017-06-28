<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.New.entity.News" %>
<%@ page import="com.New.bean.monthBean"%>
<%@ page import="com.New.util.DateUtil" %>
<%@ page import="com.New.entity.User" %>
<jsp:useBean id="cal"  class="com.New.bean.monthBean" scope="request"/>
<% 
   int today=cal.getToday();
%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
	<title>软件学院学生服务平台</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="css/box.css">
	<link href="css/focus.css" type="text/css" rel="stylesheet" />
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/function.js" type="text/javascript"></script>
	<link rel="shortcut icon" href="logo.ico" type="image/x-icon">
    <link rel="icon" href="logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/sooperfish.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/sooperfish-theme-large.css" media="screen">
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
<style type="text/css">
#roll{height:230px; margin:10px auto;overflow:hidden;list-style:none;}
</style>
<style type="text/css">
<!--


#nav1 {
list-style-type: none;
overflow:hidden;
padding-left:50px;
}
#nav1 a {
display: block; 
color:#fff;
}
#nav1 a:link  {
text-decoration:none;
}
#nav1 a:visited  {
text-decoration:none;
}
#nav1 a:hover  {
text-decoration:none;
}
#nav1 li {
float: left; 

}
#nav1 li ul {

list-style-type: none;
text-align:left;
left: -999px;
width: 190px; //注意,这里一定要设置宽度;
position: absolute;

}
#nav1 li ul li{
float: left;//float就是子菜单横向的关键,可以继承父菜单而省略float

}
#nav1 li ul a{
display: block; 
margin-left:-50px;	
padding-right:60px;
background:#FFF;
color:#000;
}
#nav1 li ul a:link  {
 text-decoration:none;
}
#nav1 li ul a:visited  {
text-decoration:none;
}

#nav1 li:hover ul {
left:10px;
}

#content {
clear: left;
}
#nav1 li ul li a:hover{
	background:#000;
	color:#fff;
}
-->
</style>
<script type=text/javascript><!--//--><![CDATA[//><!--
function menuFix() {
var sfEls = document.getElementById("nav").getElementsByTagName("li");
for (var i=0; i<sfEls.length; i++) {
sfEls[i].onmouseover=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onMouseDown=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onMouseUp=function() {
this.className+=(this.className.length>0? " ": "") + "sfhover";
}
sfEls[i].onmouseout=function() {
this.className=this.className.replace(new RegExp("( ?|^)sfhoverb"),
"");
}
}
}
window.onload=menuFix;
//--><!]]></script>
<script type="text/javascript">
$(document).ready(function() {
$('ul.sf-menu').sooperfish();
});
</script>
</head>
<body>
<div style="position:absolute;z-index:999;margin-left:1150px;padding-top:10px;color:fff;"></div>
<div style="position:absolute;z-index:999;margin-left:753px;padding-top:10px;">
 <ul id="nav1" >
<li><a href="#" style="background:transparent;">[登录]</a>
<ul style="padding-left:45px;padding-top:15px;text-align:center;">
<li><a href="login2.jsp">用户登录</a></li>
<li><a href="admin/index.jsp">管理员登录</a></li>
</div>
</ul>
</li>
</ul>
	<div id="top">
		<div class="logo"></div>
		<div class="top_content">
			<div  class="top_login">
			<a href="register.jsp">[注册]</a>|<a href="findpass.jsp">[找回密码]</a></div>
			<div class="out_login"><a href="logout.jsp">【退出当前用户】</a></div>
		</div>
	</div>
<!------------------------------------导航------------------------------------------>
	<div id="body">
	<div id="top_nav">
  	 <ul class="sf-menu" id="nav" style="width:1158px;background:#000;text-align:center;padding-left:88px;">
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
		<div>
		
				<div class="img_text"><a href="#jump_album"><img src="img/1.jpg"></a></div>
				<video autoplay="autoplay" loop="-1">
				<source src="video/f.mp4" type="video/mp4" />
				<object data="video/f.mp4">
  </object>
</video>
		</div>


<!-----------------------------------新闻页面--------------------------------------->
		<div class="body_news">
			<div class="news_tw">
				<div class="news_title_tw">
				<div class="blink"><img src="blink.gif" /></div>
				<h6><a href="/2SS/NewsByTypeServlet?type='1'">更多</a></h6></div>
				  <div class="article_tw">
           				<ul>
                    		<%
					     	    List<News> lis2 = (List)request.getAttribute("twlist");
					        	for(int i=0;lis2!=null&&i<lis2.size();i++){
					  	     %>
		       			     <li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=lis2.get(i).getId()%> " style=""><%=lis2.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=lis2.get(i).getCreate_date() %><%out.print("]");%></span>
		       			       <span class="clear"></span></li>
					          <%} %>
            			</ul>
          </div>
			</div>
			<div class="news_xsh">
			<div class="news_title_xsh">
			<div class="blink pxsh"><img src="blink.gif" /></div>
			<h6> <a href="/2SS/NewsByTypeServlet?type='2'">更多</a></h6></div>
				 <div class="article_xsh">
          				 <ul>
					        	<%
					        		List<News> lis1 = (List)request.getAttribute("xshlist");
					        		for(int i=0;lis1!=null&&i<lis1.size();i++){
					         	%>
					         	 <li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=lis1.get(i).getId()%> " style=""><%=lis1.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=lis1.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
					          <%} %>
			       		 </ul>
          </div>
			</div>
			<div class="index_notice">
					<div class="news_title_notice"><h6> <a href="/2SS/NewsByTypeServlet?type='3'">更多</a></h6></div>
				 <div class="article_notice">
         				 <ul id="roll">
					      	 <%
					        	List<News> li1 = (List)request.getAttribute("gglist");
					        	for(int i=0;li1!=null&&i<li1.size();i++){
					         %>
					     	<li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=li1.get(i).getId()%> " style=""><%=li1.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=li1.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
					          <%} %>
       					 </ul>
          </div>
		  </div>
			<div class="news_xzh">
				<div class="news_title_xzh">
				<div class="blink pxzh"><img src="blink.gif" /></div>
				<h6> <a href="/2SS/NewsByTypeServlet?type='4'">更多</a></h6></div>
				 <div class="article_xzh">
						<ul>
					        <%
					        	List<News> li4 = (List)request.getAttribute("xzhlist");
					        	for(int i=0;li4!=null&&i<li4.size();i++){
					         %>
					          <li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=li4.get(i).getId()%> " style=""><%=li4.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=li4.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
					          <%} %>
				        </ul>
			</div>
			</div>
			<div class="news_axsz">
				<div class="news_title_axsz">
				<div class="blink paxsz"><img src="blink.gif" /></div>
				<h6> <a href="/2SS/NewsByTypeServlet?type='5'">更多</a></h6></div>
				  <div class="article_axsz">
          				<ul>
					        <%
					        	List<News> li3 = (List)request.getAttribute("axsztlist");
					        	for(int i=0;li3!=null&&i<li3.size();i++){
					         %>
					          <li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=li3.get(i).getId()%> " style=""><%=li3.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=li3.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
					          <%} %>
				        </ul>
          </div>
			</div>
			<div class="index_room">
					 <table border="0" align="center" width="100%" height="30">
			    <tr bgcolor="white" >
					<td style="text-align:center;" colspan="7">&nbsp;<font size="+2"><%=cal.getMonthName()%></font></td>
				</tr>
				<tr bgcolor="#259fc8" align="center">
					<% for(int i=1;i<8;i++) {
  						 out.print("<td width=\"70\" >");
  						 out.print("<font size\"-1\" color=\"white\">");
  						 out.print(cal.getDayName(i,true));
						 out.print("</front> </td>");
					}%>
				</tr>
					<% int startcell=cal.getStartCell();
  						 int endcell=cal.getEndCell();
    					 for(int cellNo=0,day=1;cellNo<42;cellNo++) {
         					 if(cellNo%7==0) { out.print("<tr>"); }
    								out.print("<td valign=top height=45");
          					 if(cellNo<startcell||cellNo>endcell) {
               						out.print(" bgcolor=\"white\">"); }
 							 else {  
           							   if(day==today){  //如果为当前日期，背景色设为绿色
                   						out.print(" bgcolor=\"#259fc8\">");
                       				}
              				 else
                 			  out.print(">");
					%>
			<%=day%>
 					<%  
    					 day++;
 						}
   							 out.println("</td>");
           						 if(cellNo+1%7==0) {
                					 out.print("</tr>"); }
   					 }   //end for loop
 					%>

   		       </table>   
			</div>
			<div class="found_and_discuss">
				<div class="index_found">
					<div class="news_title_swzl"> <h6><a href="pages/add.jsp">发布</a> <a href="/2SS/NewsByTypeServlet?type='6'">更多</a></h6></div>
				  <div class="article_swzl">
				  		    <ul>
					    <%
					       List<News> li5 = (List)request.getAttribute("swzllist");
					      	for(int i=0;li5!=null&&i<li5.size();i++){
					      %>
					      <li><span class="title"> <a href="NewsByTypeTitleServlet?id=<%=li5.get(i).getId()%> " style=""><%=li5.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=li5.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
					     <%} %>
       			</ul>
          </div>
				</div>
				<div class="index_discuss">
					<div class="news_title_discuss"><h6><a href="pages/add.jsp">发帖</a> <a href="/2SS/NewsByTypeServlet?type='7'"> 更多</a></h6></div>
				  <div class="article_discuss">
            		<ul>
			       			 <%
			        			List<News> li2 = (List)request.getAttribute("jsjylist");
			        			for(int i=0;li2!=null&&i<li2.size();i++){
			        		 %>
			             <li><span class="title"><a href="NewsByTypeTitleServlet?id=<%=li2.get(i).getId()%> " style=""><%=li2.get(i).getTitle() %> </a></span> <span class="date"><%out.print("[");%><%=li2.get(i).getCreate_date() %><%out.print("]");%></span> <span class="clear"></span> </li>
			          <%} %>
       			  </ul>
          </div>
				</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
(function(A){
   function _ROLL(obj){
      this.ele = document.getElementById(obj);
   this.interval = false;
   this.currentNode = 0;
   this.passNode = 0;
   this.speed = 100;
   this.childs = _childs(this.ele);
   this.childHeight = parseInt(_style(this.childs[0])['height']);
       addEvent(this.ele,'mouseover',function(){
                                   window._loveYR.pause();
           });
    addEvent(this.ele,'mouseout',function(){
                                   window._loveYR.start(_loveYR.speed);
           });
   }
   function _style(obj){
     return obj.currentStyle || document.defaultView.getComputedStyle(obj,null);
   }
   function _childs(obj){
   var childs = [];
   for(var i=0;i<obj.childNodes.length;i++){
   var _this = obj.childNodes[i];
   if(_this.nodeType===1){
   childs.push(_this);
   }
   }   
   return childs;
   }
 function addEvent(elem,evt,func){
    if(-[1,]){
     elem.addEventListener(evt,func,false);   
    }else{
     elem.attachEvent('on'+evt,func);
    };
 }
 function innerest(elem){
      var c = elem;
   while(c.childNodes.item(0).nodeType==1){
       c = c.childNodes.item(0);
   }
   return c;
 }
   _ROLL.prototype = {
      start:function(s){
           var _this = this;
     _this.speed = s || 100;
        _this.interval = setInterval(function(){
          _this.ele.scrollTop += 1;
       _this.passNode++;
       if(_this.passNode%_this.childHeight==0){
          var o = _this.childs[_this.currentNode] || _this.childs[0];
          _this.currentNode<(_this.childs.length-1)?_this.currentNode++:_this.currentNode=0;
          _this.passNode = 0;
          _this.ele.scrollTop = 0;
          _this.ele.appendChild(o);
       }
        },_this.speed);
   },
   pause:function(){
   var _this = this;
      clearInterval(_this.interval);
   }
   }
    A.marqueen = function(obj){A._loveYR = new _ROLL(obj); return A._loveYR;}
})(window);
marqueen('roll').start(100/*速度默认100*/);
</script>
<!-----------------------------------相册--------------------------------------->
<div id="jump_album">
<div class="body_album">
			<div class="album_left">
				<div class="album_title"><img src="img/album/11.jpg"></div>
				<div class="album_max">
					<ul class="demo-1 effect demo-1-1">
						        <li>
						            <h2>学生会相册</h2>
						            <p>
		&nbsp;&nbsp;&nbsp; 信息与软件工程学院学生会由主席团领导，设置秘书处、文艺部、体育部、宣传部、学研部、生活部、女生部、民族部八个部门。</p><br />
		设主席1名，副主席2名，秘书长1名。主席团是学生会运作的核心，全面主持学生会的日常工作。<br />
						        </li>
						        
						        <li>><img class="top" src="img/album/12.jpg" alt=""/></li>
					      </ul>
				</div>
			</div>
			<div class="album_right">
				<div class="big_photo">
					<ul class="demo-1 effect demo-1-2">
						        <li>
						            <h2>团委相册</h2>
						           <p>
	&nbsp;&nbsp;&nbsp; 信息与软件工程学院团委是在校团委和院党委领导下的先进青年组织，围绕学院党团中心工作，
	以学院“能力型软件人才”的培养目标为导向，紧密结合学院青年思想实际和专业特点，
	努力开创我院共青团工作新局面，为广大院学生发挥才干、展示自我搭建交流的平台，为我院的学风建设和人才培养做出了应有的贡献。</p>
						        </li>
						        
						        <li>><img class="top" src="img/album/13.jpg" alt=""/></li>
					      </ul>
				</div>
				<div class="small_photo">
					<ul class="demo-1 effect demo-1-3">
						        <li>
						            <h2>学专会相册</h2>
						            <p>
	&nbsp;&nbsp;&nbsp; 东北师范大学信息与软件工程学院学生专业发展协会(简称学专会)成立于2003年，是一个丰富学生专业学习生活，促使老师同学交流的重要学生组织。从创办以来，一直致力于提高我院学生的专业能力水平，</p>
	<p>&nbsp;&nbsp;&nbsp;下属五个部门：秘书处，科研中心，竞赛部，宣传部，IT实践部，ACM部。	</p>
						        </li>
						        
						        <li>><img class="top" src="img/album/14.jpg" alt=""/></li>
					      </ul>
				</div>
			</div>
			<div class="album_right">
				<div class="small_photo">
					<ul class="demo-1 effect demo-1-5">
						        <li>
						            <h2>东师蓝</h2>
						            <p>万里晴空，一片湛蓝。那种蓝是浅浅的，就像是块蓝水晶，它给人的感觉总是那样纯洁，清爽。望着它，我整个心仿佛都是空的，只有眼球前的这个蓝天。</p>
						        </li>
						        
						        <li>><img class="top" src="img/album/15.jpg" alt=""/></li>
					      </ul>
				</div>
				<div class="small_photo">
					<ul class="demo-1 effect demo-1-6">
						        <li>
						            <h2>东师一角</h2>
						            <p>放下手中沉重的笔，聆听窗外的欢呼声，目光漫游到窗子之外，原来，校园如此美妙。阳光如潮，汹涌地演绎着与大地的千年相遇。感染着东师，留下一片绚烂。</p>
						        </li>
						        
						        <li>><img class="top" src="img/album/16.jpg" alt=""/></li>
					      </ul>
				</div>
				<div class="big_photo">
					<ul class="demo-1 effect demo-1-7 ">
						        <li>
						            <h2>爱心使者团相册</h2>
						            <p>&nbsp;&nbsp;&nbsp;爱心使者团是一个充满爱与感动的大家庭，这里的每个人都有一个温暖的名字——“爱心使者”，成为这个家庭的一员会是一份莫大的荣幸，这里不仅仅有热情宽容的学长学姐教会你成长，更有无数感动的事情让你成熟，在这里的每个人都是怀着虔诚的感恩之心回报社会，传递爱心，播撒希望。
</p>
						        </li>
						        
						        <li>><img class="top" src="img/album/17.jpg" alt=""/></li>
					      </ul>
				</div>
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