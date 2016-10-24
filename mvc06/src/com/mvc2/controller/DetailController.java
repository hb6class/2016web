package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;
import com.mvc2.model.GuestDto;

@WebServlet("/guestone.naver")
public class DetailController extends HttpServlet {
	GuestDto dto;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String param=request.getParameter("idx");
		int sabun=0;
		if(!(param==null||"".equals(param)))
		sabun=Integer.parseInt(param);
		try {
			GuestDao dao= new GuestDao();
			dto=dao.selectOne(sabun);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("bean", dto);
		request.getRequestDispatcher("guest/detail.jsp").forward(request, response);
	}

}
