package com.mvc2.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;
import com.mvc2.model.GuestDto;

//@WebServlet("/guestlist.naver")
public class ListController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<GuestDto> list = null;
		String param1=request.getParameter("p");
		
		int p=1;
		int row=Integer.parseInt(getServletConfig().getInitParameter("row"));
		int rowTot=1;
		if(param1!=null)p=Integer.parseInt(param1);
//		String driver=getServletConfig().getInitParameter("driver");
//		String url=getServletConfig().getInitParameter("url");
//		String user=getServletConfig().getInitParameter("user");
//		String pw=getServletConfig().getInitParameter("password");
		String driver=getServletContext().getInitParameter("driver");
		String url=getServletContext().getInitParameter("url");
		String user=getServletContext().getInitParameter("user");
		String pw=getServletContext().getInitParameter("password");
		try {
			GuestDao dao = new GuestDao(driver,url,user,pw);
			rowTot=dao.getTot();
			list = dao.selectAll(p,row);
		} catch (Exception e) {
			e.printStackTrace();
		}
		int pTot=(rowTot-1)/row+1;
		request.setAttribute("ptot", pTot);
		request.setAttribute("list", list);
		request.getRequestDispatcher("guest/list.jsp").forward(request, response);
	}

}
