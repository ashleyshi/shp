package com.Category.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Category.entity.Category;
import com.Category.dao.CategoryMgr;

/**
 * Servlet implementation class for Servlet: AddCategoryServlet
 *
 */
 public class AddCategoryServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public AddCategoryServlet() {
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
		String classname = request.getParameter("classname");
		Category category =new Category();
		category.setName(classname);
		category.setMaster(request.getSession(true).getAttribute("username").toString());
		CategoryMgr categoryMgr =new CategoryMgr();
		categoryMgr.add(category);
		
		response.sendRedirect("admin/saveclass.jsp");
	}   	  	    
}