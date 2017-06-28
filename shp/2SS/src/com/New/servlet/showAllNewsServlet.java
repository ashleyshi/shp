package com.New.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.New.dao.NewDao;
import com.New.entity.News;

public class showAllNewsServlet extends HttpServlet {

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
		this.doPost(request, response);//调用dopost()方法
		out.flush();
		out.close();
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();

		//声明List()对象
		List<News> xshlist=new ArrayList<News>();
		List<News> twlist=new ArrayList<News>();
		List<News> gglist=new ArrayList<News>();
		List<News> lttzlist=new ArrayList<News>();	
		List<News> axsztlist=new ArrayList<News>();
		List<News> swzllist=new ArrayList<News>();
		List<News> xzhlist=new ArrayList<News>();
		List<News> jsjylist=new ArrayList<News>();
		
		xshlist=NewDao.showNew("学生会");//调用查询的方法，把查询到的数据放到list对象中
		twlist=NewDao.showNew("团委");//调用查询的方法，把查询到的数据放到list对象中
		gglist=NewDao.showNew("通知公告");//调用查询的方法，把查询到的数据放到list对象中
		lttzlist=NewDao.showNew("论坛帖子");//调用查询的方法，把查询到的数据放到list对象中
		axsztlist=NewDao.showNew("爱心使者团");//调用查询的方法，把查询到的数据放到list对象中
		swzllist=NewDao.showNew("失物招领");//调用查询的方法，把查询到的数据放到list对象中
		xzhlist=NewDao.showNew("学专会");//调用查询的方法，把查询到的数据放到list对象中
		jsjylist=NewDao.showNew("教室借用");//调用查询的方法，把查询到的数据放到list对象中
		
		request.setAttribute("xshlist",xshlist);//把list集合放入到request对象中
		request.setAttribute("twlist",twlist);//把list集合放入到request对象中
		request.setAttribute("gglist",gglist);//把list集合放入到request对象中
		request.setAttribute("lttzlist",lttzlist);//把list集合放入到request对象中
		request.setAttribute("axsztlist",axsztlist);//把list集合放入到request对象中	
		request.setAttribute("swzllist",swzllist);//把list集合放入到request对象中
		request.setAttribute("xzhlist",xzhlist);//把list集合放入到request对象中
		request.setAttribute("jsjylist",jsjylist);//把list集合放入到request对象中
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);//转发到指定的页面		
		out.flush();
		out.close();
		
	}
	
public void init()throws ServletException{
		
	}
	
}
