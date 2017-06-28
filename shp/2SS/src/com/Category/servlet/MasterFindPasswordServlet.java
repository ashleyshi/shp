package com.Category.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Category.dao.*;
public class MasterFindPasswordServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MasterFindPasswordServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String strUserName = request.getParameter("username");
		String userpwd = MasterMgr.getUserpwd(strUserName);
		if (userpwd != null) {
			request.setAttribute("userpwd",userpwd);
		} else{
			request.setAttribute("userpwd","输入的用户名与密码不匹配，请重试！");
		}
			try {
				request.getRequestDispatcher("/admin/masterFindpass.jsp").forward(request,response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		
	}
}