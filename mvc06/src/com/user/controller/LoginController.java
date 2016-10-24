package com.user.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.UserDao;

@WebServlet("/login.naver")
public class LoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param1=request.getParameter("sabun");
		String param2=request.getParameter("name");
		
		int sabun=Integer.parseInt(param1);
		String name=param2;
		UserDao dao= new UserDao();
		int result=0;
		try {
			result=dao.login(sabun,name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result>0){
			HttpSession session = request.getSession();
			session.setAttribute("result", true);
			session.setAttribute("sabun", sabun);
			response.sendRedirect("guestlist.naver");
		}else{
			
			response.sendRedirect("user.naver");
		}
	}

}
