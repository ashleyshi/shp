package com.New.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.entity.User;
import com.New.jdbc.DBConnect;
/**
 * Servlet implementation class for Servlet: RegisterServlet
 */
public class CheckRegisterServlet extends javax.servlet.http.HttpServlet
		implements javax.servlet.Servlet {
	public CheckRegisterServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 获取提交的用户名：
		String strUserName = request.getParameter("txtUserName");
		strUserName=new String(strUserName.getBytes("ISO8859_1"),"UTF-8");
		// 获取提交的密码：
		String strPassword = request.getParameter("txtPassword");
		strPassword=new String(strPassword.getBytes("ISO8859_1"),"UTF-8");
		String strConfPassword = request.getParameter("txtConfPassword");
		// 获取其他数据：
		String strGender = request.getParameter("sltGender");
		String strEmail = request.getParameter("txtEmail");
		strEmail=new String(strEmail.getBytes("ISO8859_1"),"UTF-8");
		int intGender = -1;
		// 转化变量：
		if ((strGender != null) && (strGender.equals("1"))) {
			intGender = 1;
		} else if ((strGender != null) && (strGender.equals("0"))) {
			intGender = 0;
		}

		User user = new User();
		user.setUserName(strUserName);
		user.setPassWord(strPassword);
		user.setGender(intGender);
		user.setEmail(strEmail);
		request.setAttribute("user", user);
		try {
			request.getRequestDispatcher("/register2.jsp").forward(request,
					response);
		} catch (Throwable t) {
			getServletContext().log(t.getMessage());
		}
	}
}