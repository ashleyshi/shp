package com.BBS.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BBS.dao.BBSMsgMgr;
import com.BBS.entity.BBSMsg;
import com.New.jdbc.*;
import com.New.entity.*;
import com.BBS.servlet.Encoder;
/**
 * Servlet implementation class for Servlet: ComposeServlet
 */
public class ComposeServlet extends javax.servlet.http.HttpServlet implements
		javax.servlet.Servlet {
	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ComposeServlet() {
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
		request.setCharacterEncoding("UTF-8");//设置request的编码方式
		response.setCharacterEncoding("UTF-8");//设置response的编码方式
		response.setContentType("text/html;charset=UTF-8");
		String title = request.getParameter("MB_TITLE");
		//System.out.println("title:"+ title);
		String content = request.getParameter("MB_CONTENT");
		//System.out.println("content:"+content);
		 title =Encoder.returnToBr(title);
		// System.out.println("title-------------"+title);
		content =Encoder.returnToBr(content);
		//System.out.println("content---------"+content);
		String face=request.getParameter("face");

		BBSMsg msg = new BBSMsg();
		msg.setAuthor(request.getSession().getAttribute("userName").toString());
		msg.setItem_title(title);
		msg.setItem_content(content);
		msg.setCompose_date(new Date());
		msg.setFace(Integer.parseInt(face));
		msg.setModify_date(new Date());
		BBSMsgMgr mgr = new BBSMsgMgr();
        int i = mgr.compose(msg);
		if (i == 0) {
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