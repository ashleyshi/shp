<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../include/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>欢迎光临<%=title%></title>
<link rel="stylesheet" href="../css/news.css" type="text/css" media="screen">
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

<TABLE border=0 align=center border=0 cellPadding=6 cellSpacing=0 width=720
  background="../img/index/ddd.gif">
	<TBODY>
	
		<TR>
			<TD style="font-size:18px;font-weight:bold;"><FONT><B>=&gt; 登录入口</B><BR>
			[<A style="font-size:18px;font-weight:bold;" href="masterFindpass.jsp" style="CURSOR: help"><FONT>忘记密码</FONT></A>]
			[<A style="font-size:18px;font-weight:bold;" href="javascript:history.back();"><FONT>返回</FONT></A>]
			</FONT></TD>
			<TD align=right></TD>
		</TR>
		<FORM action="../MasterLoginServlet" method=post
			onsubmit="return check_input(this)">
		<%if(request.getAttribute("error")!=null){%>
		<TR>
			<TD colspan=2><%=request.getAttribute("error")%></TD>
		</TR>
		<%}%>
		<TR>
			<TD></TD>
			<TD style="font-size:18px;font-weight:bold;">&nbsp;用户名：<INPUT maxLength=16
				name=username size=20></TD>
		</TR>
		<TR>
			<TD></TD>
			<TD style="font-size:18px;font-weight:bold;">&nbsp;密&nbsp;&nbsp;&nbsp;码：<INPUT
				maxLength=20 name=password size=20 type=password> </TD>
		</TR>
		<TR>
			<TD></TD>
			<TD>&nbsp;<INPUT name=submit
				type=submit value="登 陆"> </TD>
		</TR>
	 <tr  height=128><td></td><td></td></tr>
		</FORM>
	</TBODY>
</TABLE>
 <table align=center border=0>
 <tr  align=cente><td>

</td></tr>
</table>