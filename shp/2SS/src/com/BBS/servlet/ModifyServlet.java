package com.BBS.servlet;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;
import com.BBS.entity.BBSMsg;

/**
 * Servlet implementation class for Servlet: ReadServlet
 */
public class ModifyServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ModifyServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		if (id == null) {
			request.setAttribute("error", "<h1>阅读留言失败!</h1>");
		} else {
			BBSMsgMgr mgr = new BBSMsgMgr();

			BBSMsg msg = mgr.getMessage(Integer.parseInt(id));
			
			request.setAttribute("msg", msg);
		}
		try {
			request.getRequestDispatcher("/bbs/modify.jsp").forward(request,
					response);
		} catch (Throwable t) {
			getServletContext().log(t.getMessage());
		}
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String title = request.getParameter("MB_TITLE");
		String content = request.getParameter("MB_CONTENT");
		title =Encoder.returnToBr(title);
		content =Encoder.returnToBr(content);
		String face=request.getParameter("face");
		BBSMsg msg = new BBSMsg();
		msg.setItem_id(Integer.parseInt(id));
		msg.setItem_title(title);
		msg.setItem_content(content);
		msg.setModify_date(new Date());
		msg.setFace(Integer.parseInt(face));
		BBSMsgMgr mgr = new BBSMsgMgr();

		int i = mgr.modify(msg);
		if (i == 1) {
			// 撰写成功
			Collection c = mgr.getAllMessages(10, 1);
			request.setAttribute("c", c);
			try {
				request.getRequestDispatcher("/bbsIndex.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		} else {
			// 否则，表明撰写留言失败：
			request.setAttribute("error", "<h1>修改留言失败!</h1>");
			try {
				request.getRequestDispatcher("/bbs/error.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
	}
}