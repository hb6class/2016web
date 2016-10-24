package com.mvc2.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;

public class ListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GuestDao dao= new GuestDao();
		ArrayList list=dao.selectAll();
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/list.jsp").forward(req, resp);
		
	}
}
