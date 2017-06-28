package com.New.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.dao.NewDao;
import com.New.entity.News;

public class UpdateNewServlet extends HttpServlet {

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
		out.flush();
		out.close();
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		//System.out.println("id2:"+id);
		String title=request.getParameter("title");
		//System.out.println("title:"+title);
		String content=request.getParameter("content");
		//System.out.println("content:"+content);
	    String create_date=request.getParameter("create_date");
		//System.out.println("123:"+create_date);
	    String type = request.getParameter("type");
	   //s System.out.println("type:"+type);
		News news=new News();
          news.setId(id);
          news.setTitle(title);
          news.setContent(content);
          news.setCreate_date(create_date);
          news.setType(type);     
          try {
			NewDao.updateNew(news);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("showByPageServlet");
		out.flush();
		out.close();
		
	}
	
public void init()throws ServletException{
		
	}	
}
