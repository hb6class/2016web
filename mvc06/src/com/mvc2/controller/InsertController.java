package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;

@WebServlet("/guestInsert.naver")
public class InsertController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param1=request.getParameter("sabun");
		String param2=request.getParameter("name");
		String param3=request.getParameter("pay");
		//param°ª °Ë»ç
		//~~~
		int sabun=Integer.parseInt(param1);
		String name=param2;
		int pay=Integer.parseInt(param3);
		int result=0;
		String driver=getServletContext().getInitParameter("driver");
		String url=getServletContext().getInitParameter("url");
		String user=getServletContext().getInitParameter("user");
		String pw=getServletContext().getInitParameter("password");
		try {
			GuestDao dao=new GuestDao(driver,url,user,pw);
			result=dao.insertOne(sabun,name,pay);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result>0)response.sendRedirect("guestlist.naver");
		else response.sendRedirect("guestAdd.naver");
	}

}









