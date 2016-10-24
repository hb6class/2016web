package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout.naver")
public class LogoutController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
//		session.setAttribute("result", false);
		int sabun=(int)session.getAttribute("sabun");
		session.invalidate();
		request.setAttribute("user", sabun);
		System.out.println(sabun);
		request.getRequestDispatcher("user/logout.jsp").forward(request, response);
	}
}
