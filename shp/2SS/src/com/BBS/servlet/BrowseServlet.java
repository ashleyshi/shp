package com.BBS.servlet;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;


/**
 * Servlet implementation class for Servlet: BrowseServlet
 */
public class BrowseServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public BrowseServlet() {
		super();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/html;charset=UTF-8");
		
		int pagesize = 10;
		String page = request.getParameter("page");
		BBSMsgMgr mgr = new BBSMsgMgr();
		int count = mgr.getCount();// 记录总数
		int totalPageNum = count / pagesize;// 逻辑页数
		// 如果纪录总数除以每页的显示个数,余数大于0,那么
		// 逻辑页数应该为商+1
		if ((count % pagesize) > 0) {
			totalPageNum += 1;
		}
		Collection c = null;
	if (page == null) {
			c = mgr.getAllMessages(pagesize, 1);
		} else {
			c = mgr.getAllMessages(pagesize, Integer.parseInt(page));
		}
		//c = mgr.getAllMessages(pagesize, totalPageNum);
		request.setAttribute("totalPageNum", new Integer(totalPageNum));
		request.setAttribute("c", c);
		try {
			request.getRequestDispatcher("/bbs/browse.jsp").forward(request,
					response);
		} catch (Throwable t) {
			getServletContext().log(t.getMessage());
		}
	}
}