package com.model1.srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements Servlet {
	ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Ex01-init()run");
		
		this.config=config;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("Ex01-service()run");
		PrintWriter out = res.getWriter();
		out.println("<h1>web service</h1>");
	}

	@Override
	public void destroy() {
		System.out.println("Ex01-destroy()run");
	}

	@Override
	public ServletConfig getServletConfig() {
		return this.config;
	}
	@Override
	public String getServletInfo() {
		return "ver:1.0";
	}

}
