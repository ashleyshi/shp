<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id='clock' scope='page'
	class='com.New.util.Calendarable'
	type="com.New.util.Calendarable" />
<td align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="-1"
	color="Red"><jsp:getProperty name="clock" property="year" />-<jsp:getProperty
	name="clock" property="month" />-<jsp:getProperty name="clock"
	property="dayOfMonth" /></font>&nbsp; <font size="-1" color="Blue">星期<b><jsp:getProperty
	name="clock" property="day" /></b>&nbsp;&nbsp; 当前时间为 <jsp:getProperty
	name="clock" property="time" /></font></td>
