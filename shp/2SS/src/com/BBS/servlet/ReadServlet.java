package com.BBS.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;

/**
 * Servlet implementation class for Servlet: ReadServlet
 */
public class ReadServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ReadServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/html;charset=UTF-8");
	
		
		String _id = request.getParameter("id");
		if (_id == null) {
			request.setAttribute("error", "<h1>阅读留言失败!</h1>");
			try {
				request.getRequestDispatcher("/bbs/error.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		} else {
			int id = Integer.parseInt(_id);
		
			BBSMsgMgr mgr = new BBSMsgMgr();
			//System.out.println("id----------"+id);
			mgr.read(id);
			
			Collection c = mgr.getChildren(id);
			if (c == null) {
				request.setAttribute("error", "<h1>不存在该留言!</h1>");
				try {
					request.getRequestDispatcher("/bbs/error.jsp").forward(request,
							response);
				} catch (Throwable t) {
					getServletContext().log(t.getMessage());
				}
			} else {
				request.setAttribute("c", c);
				try {
					request.getRequestDispatcher("/bbs/read.jsp").forward(request,
							response);
				} catch (Throwable t) {
					getServletContext().log(t.getMessage());
				}
			}
		}
	}
}