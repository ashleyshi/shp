package com.New.servlet;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.New.jdbc.DBConnect;
import com.New.entity.User;
public class RegisterServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String result = "";
		// 获取提交的用户名：
		String strUserName = request.getParameter("txtUserName");
		strUserName = new String(strUserName.getBytes("ISO8859_1"), "UTF-8");
		// 获取提交的密码：
		String strPassword = request.getParameter("txtPassword");
		strPassword = new String(strPassword.getBytes("ISO8859_1"), "UTF-8");
		String strConfPassword = request.getParameter("txtConfPassword");
		if ((strUserName == null) || (strUserName.equals(""))
				|| (strUserName.length() > 20)) {
			result = "请输入用户名(不超过20字符)";
			request.setAttribute("result", result);
			try {
				request.getRequestDispatcher("/register.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
		if ((strPassword == null) || (strPassword.equals(""))
				|| (strPassword.length() > 20)) {
			result = "请输入密码(不超过20字符)";
			request.setAttribute("result", result);
			try {
				request.getRequestDispatcher("/register.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
		if ((strConfPassword == null) || (strConfPassword.equals(""))
				|| (strConfPassword.length() > 20)) {
			result = "请输入确认密码(不超过20字符)";
			request.setAttribute("result", result);
			try {
				request.getRequestDispatcher("/register.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
		if (!strPassword.endsWith(strConfPassword)) {
			result = "密码与确认密码不匹配，请重新输入密码(不超过20字符)";
			request.setAttribute("result", result);
			try {
				request.getRequestDispatcher("/register.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}

		String strEmail = request.getParameter("txtEmail");
		if ((strEmail == null) || (strEmail.equals(""))
				|| (strEmail.length() > 20)) {
			result = "请输入正确的Email(不超过30字符)";
			request.setAttribute("result", result);
			try {
				request.getRequestDispatcher("/register.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
		strEmail = new String(strEmail.getBytes("ISO8859_1"), "UTF-8");
		int intGender = -1;
		Object strGender = null;
		
		if ((strGender != null) && (strGender.equals("1"))) {
			intGender = 1;
		} else if ((strGender != null) && (strGender.equals("0"))) {
			intGender = 0;
		}
		
		ResultSet rs=null;
		try {
			User user = new User();
			user.setUserName(strUserName);		
			user.setPassWord(strPassword);		
			user.setGender(intGender);		
			user.setEmail(strEmail);
			// 在UserInfo表中查找是否有同名的记录
			String sql = "select * from userinfo where userName='"
					+ strUserName + "'";
			DBConnect.preparedStatement(sql);	
			rs = DBConnect.getPreparedStatement().executeQuery(sql);
			if (rs.next()) {
				// 如果记录集为非空，表明有相匹配的用户名，注册失败：
				result = "已经存在相同的用户名，请更换一个新用户名";
				request.setAttribute("result", result);
				request.setAttribute("user", user);
				try {
					request.getRequestDispatcher("/register.jsp").forward(
							request, response);
				} catch (Throwable t) {
					getServletContext().log(t.getMessage());
				}
			} else {		
				// 否则（记录集为空），表明不存在该用户：
				// sql语句：
          sql = "insert into userinfo(userName,passWord,"
				+ "gender,email) values('"
    		    + strUserName+ "','" + strPassword 
    		    + "','" + intGender + "','"+ strEmail+"')";
				// 执行sql语句：
				DBConnect.preparedStatement(sql);
				int i = DBConnect.getPreparedStatement().executeUpdate();
				if (i == 1) {
					// 注册成功
					request.setAttribute("user", user);
					try {
						request.getRequestDispatcher("/login2.jsp")
								.forward(request, response);
					} catch (Throwable t) {
						getServletContext().log(t.getMessage());
					}
				} else {
					// 否则，表明注册失败：
					System.out.println("<h1>注册用户" + strUserName + "失败!</h1>");
					
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}
	}
}