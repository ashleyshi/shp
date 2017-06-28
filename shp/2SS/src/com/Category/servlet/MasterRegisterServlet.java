package com.Category.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Category.entity.Master;
import com.Category.dao.MasterMgr;

/**
 * Servlet implementation class for Servlet: RegisterServlet
 */
public class MasterRegisterServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public MasterRegisterServlet() {
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
		String username = request.getParameter("name");
	    //	System.out.println("username------"+username);
		String password = request.getParameter("pass");
		//  System.out.println("password----"+password);
		/*int classid= Integer.parseInt(request.getParameter("classid"));
         System.out.println("classid-----"+classid);*/
		MasterMgr masterMgr = new MasterMgr();
		
		if	(masterMgr.isExist(username)) {
			response.sendRedirect("error2.jsp");
		}
		else {
			Master master=new Master();
			master.setUsername(username);
			master.setUserpwd(password);
			masterMgr.add(master);
			
			response.sendRedirect("admin/savemaster.jsp");
		}
	}
}