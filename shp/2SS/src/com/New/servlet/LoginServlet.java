package com.New.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.jdbc.DBConnect;

public class LoginServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		this.doPost(request, response);//调用dopost()方法
		out.flush();
		out.close();
	}	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String result = "";
		// 获取提交的用户名：
		String strUserName = request.getParameter("txtUserName");
		// 获取提交的密码：
		String strPassword = request.getParameter("txtPassword");
       //获取提交的验证码
		String random =request.getParameter("random");
		String random2=request.getSession().getAttribute("random").toString();
		//System.out.println("random----"+random);
		//System.out.println("random2-----"+random2);
		if (!random.equals(random2)){
			result="输入的随机码不正确！";
			   request.setAttribute("error", result);
			   try{
				   request.getRequestDispatcher("/bbs/error.jsp").forward(request, response);	  
			   }catch (Throwable t){
				   getServletContext().log(t.getMessage());
				   
			   }
		}
		if ((strUserName == null) || (strUserName.equals(""))
				|| (strUserName.length() > 20)) {
			result = "请输入用户名(不超过20字符)";
			request.setAttribute("error_username", result);
			response.sendRedirect("login2.jsp");
		}
		if ((strPassword == null) || (strPassword.equals(""))
				|| (strPassword.length() > 20)) {
			result = "请输入密码(不超过20字符)";
			request.setAttribute("error_password", result);
			response.sendRedirect("login2.jsp");
		}
		
		ResultSet rs = null;		
		try {
			// sql语句：
			String sql = "select * from userinfo where userName='"
					+ strUserName + "' and passWord='" + strPassword + "'";		
			DBConnect.preparedStatement(sql);
			rs = DBConnect.getPreparedStatement().executeQuery();
			// 如果记录集为非空，表明有相匹配的用户名和密码，登录成功：
			if (rs.next()) {
				// 登录成功时,把strUserName设成session变量UserName
				request.getSession(true).setAttribute("userName", strUserName);	
				request.getSession(true).setAttribute("passWord", strPassword);	
				response.sendRedirect("login_success.jsp");
				//response.sendRedirect("showAllNewsServlet");
			} else {
				// 否则（记录集为空），表明失败：
				//request.getRequestDispatcher("/register.jsp").forward(request	, response);
				response.sendRedirect("login_failure.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}
		out.flush();
		out.close();
	}
}