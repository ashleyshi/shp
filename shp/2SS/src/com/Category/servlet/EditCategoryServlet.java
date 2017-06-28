package com.Category.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Category.entity.Category;
import com.Category.dao.CategoryMgr;

/**
 * Servlet implementation class for Servlet: EditCategoryServlet
 *
 */
 public class EditCategoryServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public EditCategoryServlet() {
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
		String id=request.getParameter("id");
		category.setId(Integer.parseInt(id));
		System.out.println(classname);
		category.setName(classname);
		category.setMaster(request.getSession(true).getAttribute("username").toString());
		CategoryMgr categoryMgr =new CategoryMgr();
		categoryMgr.modify(category);
		
		response.sendRedirect("admin/editclassok.jsp?id="+id);
	}   	  	    	  	    
}