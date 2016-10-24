package com.mvc2.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDao;
import com.mvc2.model.GuestDto;

@WebServlet("/list")
public class ListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GuestDao dao = new GuestDao(); 
		ArrayList<GuestDto>list = dao.selectAll();
		
		request.setAttribute("alist", list);
		RequestDispatcher rd = request.getRequestDispatcher("/guest/list.jsp");
		rd.forward(request, response);
	}

}
