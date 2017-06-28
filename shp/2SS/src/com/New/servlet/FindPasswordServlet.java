package com.New.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.dao.NewDao;
public class FindPasswordServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public FindPasswordServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String strUserName = request.getParameter("txtUserName");
		String strEmail  = request.getParameter("txtEmail");
		String passWord = NewDao.getPassword(strUserName, strEmail);
		if (passWord != null) {
			request.setAttribute("passWord",passWord);
		} else{
			request.setAttribute("passWord","输入的用户名与密码不匹配，请重试！");
		}
			try {
				request.getRequestDispatcher("/findpass.jsp").forward(request,response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		
	}
}