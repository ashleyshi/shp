<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.New.bean.monthBean"%>
<jsp:useBean id="cal"  class="com.New.bean.monthBean" scope="request"/>
<% 
   int today=cal.getToday();
%>
<html>
	<head>
		<title>日历</title>
	</head>
<body bgcolor="silver" ><br><br><br>
		<table border="0" align="center" width="40%" height="100"><tr bgcolor="silver" >
			<td colspan="7">&nbsp;<font size="+2">
				<%=cal.getMonthName()%>
		</font></td></tr>
<tr bgcolor="black" align="center">
<% for(int i=1;i<8;i++) {
   out.print("<td width=\"70\" >");
   out.print("<font size\"-1\" color=\"white\">");
   out.print(cal.getDayName(i,true));
out.print("</front> </td>");
}  %>
</tr>
<% int startcell=cal.getStartCell();
   int endcell=cal.getEndCell();
    for(int cellNo=0,day=1;cellNo<42;cellNo++) {
          if(cellNo%7==0) { out.print("<tr>"); }
    out.print("<td valign=top height=57");
           if(cellNo<startcell||cellNo>endcell) {
               out.print(" bgcolor=\"gray\">"); }
 else {  
              if(day==today){  //如果为当前日期，背景色设为绿色
                   out.print(" bgcolor=\"bluee\">");
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

</body>
</html>