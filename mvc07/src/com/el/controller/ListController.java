package com.el.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.el.model.GuestDao;
import com.el.model.GuestDto;

@WebServlet("/list.do")
public class ListController extends HttpServlet {
	private GuestDao dao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			dao=new GuestDao();
			ArrayList<GuestDto> list=dao.selectAll();
			request.setAttribute("alist", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("list.jsp").forward(request, response);
	}

}
