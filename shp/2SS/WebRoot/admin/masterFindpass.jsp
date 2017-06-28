<%@ page language="java" contentType="textml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Category.entity.*"%>
<%@ page import="com.Category.dao.*" %>
<TABLE border=0 cellPadding=0 cellSpacing=0 width=760 align="center">

	<TBODY>
		<tr>
			<td align="left" height=25><%if (session.getAttribute("username") != null) {
				out.println(session.getAttribute("username"));
			}%></td>
			
		</tr>
	</TBODY>
</TABLE>


	<table align="center" border="0" width="611" cellspacing="0"
	cellpadding="0" height="326" background="../img/s.png">
			<%if (request.getAttribute("userpwd") != null) {

			%>
			
			<tr>
				<td align="center" colspan=2 height="32" width="40%">您的密码:[ <font
					color=red><%=request.getAttribute("userpwd")%> </font>]</td>
			</tr>
			<%} else {

			%>
			<form name="form1" method="post" action="../MasterFindPasswordServlet">
			<tr>
				<td height="80" align="center" >
				 
				</td>
			</tr>
			<tr>
				<td align="right" height="60" width="40%">登录名：</td>
				<td><input type="text" name="username" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="找回密码"
					name="findpass"></td>
			</tr>
			</form>
			<%}

		%>
			<tr>
				<td colspan="2" height="150" align="center">&nbsp;
				<a href="admin/index.jsp" >返回管理员登陆页面</a>
				</td>

			</tr>
           
		</table>
		</td>
	</tr>
</table>
