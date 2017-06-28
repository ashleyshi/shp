package com.BBS.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;

/**
 * Servlet implementation class for Servlet: ReadServlet
 */
public class DeleteServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public DeleteServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
		
		String id = request.getParameter("id");
		System.out.println("id_delete----"+id);
		if (id == null) {
			request.setAttribute("error", "<h1>删除失败!</h1>");
			try {
				request.getRequestDispatcher("/error.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		} else {
			BBSMsgMgr mgr = new BBSMsgMgr();
			mgr.delete(Integer.parseInt(id));

			try {
				request.getRequestDispatcher("/bbsIndex.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
	}
}