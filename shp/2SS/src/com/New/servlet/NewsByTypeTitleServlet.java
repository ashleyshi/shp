package com.New.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.dao.NewDao;
import com.New.entity.News;

public class NewsByTypeTitleServlet extends HttpServlet {

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
		//System.out.println(request.getParameter("id"));
		int id=Integer.parseInt(request.getParameter("id"));
		//System.out.println("id1:"+id);
		News news=new News();
		news=NewDao.showByTypeTitle(id);
		request.setAttribute("news",news);
		//System.out.println(news.getTitle());
		request.getRequestDispatcher("/pages/showByTypeTitle.jsp").forward(request, response);//转发到指定的页面		
		out.flush();
		out.close();
	}
public void init()throws ServletException{
		
	}	
	
}
