package com.Category.servlet;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Category.dao.MasterMgr;

/**
 * Servlet implementation class for Servlet: LoginServlet
 */
public class MasterLoginServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public MasterLoginServlet() {
		super();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	
		// 获取提交的用户名：
		String strUserName = request.getParameter("username");
		// 获取提交的密码：
		String strPassword = request.getParameter("password");
		MasterMgr masterMgr = new MasterMgr();
		if (masterMgr.checkLogin(strUserName, strPassword)) {
			// 登录成功时,把strUserName设成session变量UserName
			request.getSession(true).setAttribute("username", strUserName);
			request.getSession(true).setAttribute("password", strPassword);
			masterMgr.addloginnum(strUserName);

			response.sendRedirect("admin/mastermanage.jsp");
		} else {
			response.sendRedirect("admin/loginerror.jsp");
		}

	}
}