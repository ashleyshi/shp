package com.Category.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Category.entity.Master;
import com.Category.dao.MasterMgr;

/**
 * Servlet implementation class for Servlet: EditMasterServlet
 *
 */
 public class EditMasterServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public EditMasterServlet() {
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
		if(request.getSession(true).getAttribute("username")==null){
			response.sendRedirect("admin/loginerror.jsp");
		}
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		int total = Integer.parseInt(request.getParameter("total"));
		int login = Integer.parseInt(request.getParameter("login"));
		int id = Integer.parseInt(request.getParameter("id"));
		Master master =new Master();
		master.setId(id);
		master.setUsername(name);
		master.setUserpwd(pass);
		master.setLoginnum(login);
		master.setTotal(total);
		MasterMgr masterMgr =new MasterMgr();
		masterMgr.modify(master);
		
		response.sendRedirect("admin/editmasterok.jsp?id="+id);
	}   	  	    	  	    
}