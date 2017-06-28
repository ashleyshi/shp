<%
String userName = (String) session.getAttribute("username");
if (userName==null){ 
    response.sendRedirect("error.jsp");
}
%>