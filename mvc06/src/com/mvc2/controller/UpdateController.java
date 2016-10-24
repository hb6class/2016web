package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;
import com.mvc2.model.GuestDto;

@WebServlet("/guestUpdate.naver")
public class UpdateController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param1=request.getParameter("sabun");
		String param2=request.getParameter("name");
		String param3=request.getParameter("pay");
		
		int sabun=Integer.parseInt(param1);
		String name=param2;
		int pay=Integer.parseInt(param3);
		GuestDto dto=new GuestDto(sabun, name, null, pay);
		int result=0;
		try {
			GuestDao dao= new GuestDao();
			result=dao.UpdateOne(dto);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		if(result>0)response.sendRedirect("guestlist.naver");
//		else response.sendRedirect("guestEdit.naver?idx="+param1);
		else{
			request.setAttribute("bean", dto);
			request.getRequestDispatcher("guest/edit.jsp").forward(request, response);
		}
		
	}

}









