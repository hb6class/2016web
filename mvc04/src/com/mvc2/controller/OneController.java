package com.mvc2.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;
import com.mvc2.model.GuestDto;

public class OneController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GuestDao dao= new GuestDao();
		int index=Integer.parseInt(req.getParameter("idx"));
		GuestDto dto= dao.selectOne(index);
		req.setAttribute("bean", dto);
		req.getRequestDispatcher("/detail.jsp").forward(req, resp);
	}
}
