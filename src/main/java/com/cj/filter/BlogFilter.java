package com.cj.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter(filterName="BlogFilter",urlPatterns={"*.html","*.jsp"})
public class BlogFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("每一次请求之前都先过我这里！！！");
		String ip = request.getRemoteAddr();//返回发出请求的IP地址
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		
	}

}
