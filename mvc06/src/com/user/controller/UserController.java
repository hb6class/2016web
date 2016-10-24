package com.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user.naver")
public class UserController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("result")!=null){
			if((boolean)session.getAttribute("result"))response.sendRedirect("guestlist.naver");
			else request.getRequestDispatcher("user/loginform.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("user/loginform.jsp").forward(request, response);
		}
	}

}
