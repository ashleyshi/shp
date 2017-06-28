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

public class showByPageServletMore extends HttpServlet {
  
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
        int page=1;
        if(page1!=null){
        	page=Integer.parseInt(page1);
        	
        }
 
       List<News> list=NewDao.showByPage(page);
       int maxpage=NewDao.maxpage();
       request.setAttribute("list", list);
       request.setAttribute("page", page);
       request.setAttribute("maxpage", maxpage);
       request.getRequestDispatcher("/pages/showByPageMore.jsp").forward(request,response);
		out.flush();
		out.close();
		
	}
public void init()throws ServletException{
		
	}	
	
}
