package com.up.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.model.FileDao;
import com.up.model.FileDto;

@WebServlet("/list.do")
public class ListController extends HttpServlet {
	private FileDao dao;
	private List<FileDto> list;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		try {
			dao=new FileDao();
			list=dao.selectAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("alist", list);
		req.getRequestDispatcher("list.jsp").forward(req, resp);
	}
}










