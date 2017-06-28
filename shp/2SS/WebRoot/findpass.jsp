<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.New.entity.User"%>
<TABLE border=0 cellPadding=0 cellSpacing=0 width=612 align="center">
	<TBODY>
		<tr>
			<td align="left" height=25><%if (session.getAttribute("userName") != null) {
				out.println(session.getAttribute("userName"));
			}%></td>
			<%-- <td align="right"><%@ include file="include/date.jsp"%></td> --%>
		</tr>
	</TBODY>
</TABLE>

<table align="center" border="0" width="611" cellspacing="0"
	cellpadding="0" height="326" background="img/s.png">
			<%if (request.getAttribute("passWord") != null) {

			%>
			<tr>
				<td align="center" colspan=2 height="32" width="40%">您的密码:[ <font
					color=red><%=request.getAttribute("passWord")%> </font>]
					<a href="showAllNewsServlet">返回主页</a></td>
			</tr>
			<%} else {

			%>
			<form name="form1" method="post"
				action="FindPasswordServlet">
			<tr>
				<td colspan="2" height="100" align="right">&nbsp;</td>

			</tr>
			<tr>
				<td align="right" height="32" width="40%">登录名：</td>
				<td><input type="text" name="txtUserName" value=""></td>
			</tr>
			<tr>
				<td align="right" height="32">E_mail：</td>
				<td><input type="text" name="txtEmail"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="找回密码"
					name="findpass"></td>
			</tr>
			</form>
			<%}

		%>
			<tr>
				<td colspan="2" height="100" align="right">&nbsp;</td>

			</tr>

		</table>
		</td>
	</tr>
</table>