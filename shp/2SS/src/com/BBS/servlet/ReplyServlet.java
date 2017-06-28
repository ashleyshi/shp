package com.BBS.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;
import com.BBS.entity.BBSMsg;

/**
 * Servlet implementation class for Servlet: ReplyServlet
 */
public class ReplyServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ReplyServlet() {
		super();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String title = request.getParameter("MB_TITLE");
		String content = request.getParameter("MB_CONTENT");
		String fatherid = request.getParameter("fatherid");
		title =Encoder.returnToBr(title);
		content =Encoder.returnToBr(content);
		String face=request.getParameter("face");
		BBSMsg msg = new BBSMsg();
		msg.setAuthor(request.getSession().getAttribute("userName").toString());
		msg.setItem_title(title);
		msg.setItem_content(content);
		msg.setCompose_date(new Date());
		msg.setFace(Integer.parseInt(face));
		BBSMsgMgr mgr = new BBSMsgMgr();

		int i = mgr.reply(msg,Integer.parseInt(fatherid));
		if (i == 1) {
			// 撰写成功
			response.sendRedirect("bbsIndex.jsp");
		} else {
			// 否则，表明撰写留言失败：
			request.setAttribute("error", "<h1>撰写留言失败!</h1>");
			try {
				request.getRequestDispatcher("/bbs/error.jsp").forward(request,
						response);
			} catch (Throwable t) {
				getServletContext().log(t.getMessage());
			}
		}
	}
}
