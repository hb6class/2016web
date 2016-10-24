package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;

@WebServlet("/insert")
public class InsertController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param1 = request.getParameter("sabun");
		String param2 = request.getParameter("name");
		String param3 = request.getParameter("pay");
		int sabun=Integer.parseInt(param1);
		String name=param2;
		int pay=Integer.parseInt(param3);
		
		GuestDao dao = new GuestDao();
		int result=dao.insertOne(sabun,name,pay);
		
		if(result>0)response.sendRedirect("./list");
		response.getWriter().print("<h1>err</h1>");
	}

}
