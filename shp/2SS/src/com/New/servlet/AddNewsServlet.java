package com.New.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.filter.*;
import com.New.dao.NewDao;
import com.New.entity.News;
public class AddNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		public void destroy() {
			super.destroy(); 
		}

		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");//设置request的编码方式
			response.setCharacterEncoding("UTF-8");//设置response的编码方式
			PrintWriter out=response.getWriter();
			/*int id= Integer.parseInt(request.getParameter("id"));//获得页面传递过来的id
*/			String title = request.getParameter("title");//获得页面传递过来的title
			//System.out.println("title:"+title);
			String content = request.getParameter("content");//获得页面传递过来的content
			//System.out.println("content:"+content);
		    String create_date=request.getParameter("create_date");//获得页面传递过来的time
		   // System.out.println("create_date:"+create_date);
		    String type = request.getParameter("type");
		   // System.out.println("type:"+type);
			News news = new News();//申明一个News对象，把获得的参数放入该对象中
			/*news.setId(id);*/
			news.setTitle(title);
			news.setContent(content);
			news.setCreate_date(create_date);
			news.setType(type);
			try {
				NewDao.addNew(news);
			} catch (SQLException e) {
		
				e.printStackTrace();
			}         
			request.getRequestDispatcher("/pages/addSuccess.jsp").forward(request, response);//转发到指定的页面
			
			out.flush();
			out.close();			
		}		
	public void init()throws ServletException{
				
		}
	}
