package com.New.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.dao.NewDao;
import com.New.entity.News;

public class NewsByTypeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void destroy(){
		super.destroy();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		this.doPost(request, response);
		out.flush();
		out.close();
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
        String page1=request.getParameter("page");
        String type=request.getParameter("type");
        int page=1;
        if(page1!=null){
        	page=Integer.parseInt(page1);
        	
        }
       //System.out.println("typeservlet:----"+type);
       List<News> list=NewDao.showByTypePage(page, type);
       int maxpage=NewDao.page(type);
       request.setAttribute("list", list);
       request.setAttribute("page", page);
       request.setAttribute("type", type);
       request.setAttribute("maxpage", maxpage);
       request.getRequestDispatcher("/pages/showByTypePage.jsp").forward(request,response);
		out.flush();
		out.close();
		
	}
public void init()throws ServletException{
		
	}	
	
}
