package com.model1.srv;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public abstract class Ex02 implements Servlet {
	ServletConfig config;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Ex02-init()run");
		
		this.config=config;
	}

	@Override
	public abstract void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException;

	@Override
	public void destroy() {
		System.out.println("Ex02-destroy()run");
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
