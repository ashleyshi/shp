package com.New.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.Filter;


public class EncodeFilter implements Filter {


	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		   //将所有的request内的对象设置字符集
			request.setCharacterEncoding("UTF-8");
		   //将所有的response内的对象设置字符集
			response.setCharacterEncoding("UTF-8");
			//用chain的doFilter处理过滤
			chain.doFilter(request,response);
	}

	public void init(FilterConfig arg0) throws ServletException {}

	public boolean test(int node) {
		return false;
	}

}
