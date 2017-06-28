<%@ page contentType="text/html;charset=UTF-8" %>
<%
session.removeValue("userName");
session.removeValue("userPwd");

response.sendRedirect("index.jsp");
%>