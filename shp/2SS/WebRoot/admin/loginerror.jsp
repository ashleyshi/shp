<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../include/include.jsp"%>
<%-- <%String userName = (String) session.getAttribute("userName_s");
			if (userName != null) {
				response.sendRedirect("main.jsp");
			}
%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/news.css" type="text/css"
	media="screen">
</head>
<body>
<script Language="JavaScript">
<!--
function isspacestring(mystring)
{ var istring=mystring;
  var temp,i,strlen;
  temp=true;
  strlen=istring.length;
  for (i=0;i<strlen;i++)
  {
    if ((istring.substring(i,i+1)!=" ")&(temp))
     { temp=false;  }
  }
 return temp;
}

function firstisspace(mystring)
{ var istring=mystring;
  var temp,i,strlen;
  temp=false;
    if (istring.substring(0,1)==" ")
     { temp=true;  }
 return temp;
}

function check_input(theForm)
{

   if ((theForm.username.value == "")|(firstisspace(theForm.username.value)))
  {
    alert("请输入用户名.不能以空格开头");
    theForm.username.focus();
    return (false);
  }

  if ((theForm.password.value == "")|(isspacestring(theForm.password.value)))
  {
    alert("请输入密码.");
    theForm.password.focus();
    return (false);
  }
}
//-->
</script>
<BR><BR>
<TABLE bgColor=<%=tablebgcolor%> border=0 cellPadding=0 cellSpacing=1
	width=60% align=CENTER>
	<TR>
		<TD align=middle background=../img/index/topback.gif height=10></TD>
	</TR>
</TABLE>
<TABLE align=center border=0 cellPadding=6 cellSpacing=0 width=60%
	bgColor=<%=tablebgcolor%>>
	<TBODY>
		<TR>
			<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor2%>><FONT color=ffffff><B>=&gt; 登录入口</B><BR>
			[<A style="font-size:18px;font-weight:bold;" href="masterFindpass.jsp" style="CURSOR: help"><FONT COLOR="ffffff">忘记密码</FONT></A>]
			[<A style="font-size:18px;font-weight:bold;" href="javascript:history.back();"><FONT COLOR="ffffff">返回</FONT></A>]
			</FONT></TD>
			<TD align=right bgColor=<%=tdbgcolor2%>></TD>
		</TR>
		<FORM action=../MasterLoginServlet method=post
			onsubmit="return check_input(this)">
		<TR>
			<TD bgColor=<%=tdbgcolor2%> colspan=2><CENTER><FONT COLOR="red">用户名与密码不匹配,登录失败,请重试！</FONT></CENTER></TD>
		</TR>
		<TR>
			<TD bgColor=<%=tdbgcolor2%>></TD>
			<TD bgColor=<%=tdbgcolor2%>>&nbsp;用户名：<INPUT maxLength=16
				name=username size=20></TD>
		</TR>
		<TR>
			<TD bgColor=<%=tdbgcolor2%>></TD>
			<TD style="font-size:18px;font-weight:bold;" bgColor=<%=tdbgcolor2%>>&nbsp;密&nbsp;码：<INPUT
				maxLength=20 name=password size=20 type=password> <INPUT name=submit
				type=submit value="登 陆"></TD>
		</TR>
		</FORM>
	</TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="60%" align=center>
	<TR bgColor=<%=trbgcolor2%>>
		<TD align=middle background=../img/index/botback.gif vAlign=bottom
			width="100%">
		<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" align=center>
			<TR>
				<TD width=1><IMG border=0 height=17 hspace=0
					src="../img/index/left.gif" width=14></TD>
				<TD align=middle width="100%"></TD>
				<TD align=right width=1><IMG border=0 height=17 hspace=0
					src="../img/index/right.gif" width=14></TD>
			</TR>
		</TABLE>
		</TD>
	</TR>
</TABLE>
<TABLE bgColor=#eeeeee border=0 width=60% align=center>
	<TBODY>
		<TR>
			
		</TR>
	</TBODY>
</TABLE>
</BODY>
</HTML>
