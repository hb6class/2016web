package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;

@WebServlet("/guestDel.naver")
public class DelController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param=request.getParameter("idx");
		int sabun=Integer.parseInt(param);
		int result=0;
		try {
			GuestDao dao= new GuestDao();
			result=dao.deleteOne(sabun);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result>0)response.sendRedirect("guestlist.naver");
		else response.sendRedirect("guestone.naver?idx="+sabun);
	}

}
