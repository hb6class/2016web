package com.el.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.el.model.JavaBean;

@WebServlet("/ex02.el")
public class El02Controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] msg=new String[2];
		msg[0]="admin";
		msg[1]="1234";
		ArrayList<Integer> list = new  ArrayList<Integer>();
		list.add(123456);
		list.add(100);
		list.add(1);
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("abc", 123);
		map.put("def", 456);
		map.put("g", 7);
		
		JavaBean bean = new JavaBean(1111, "root", new Date(), false);
		
		HttpSession session = request.getSession();
		session.setAttribute("login", "관리자");
		request.setAttribute("login", "리퀘스트");
		request.setAttribute("msg", msg);
		request.setAttribute("alist", list);
		request.setAttribute("hmap", map);
		request.setAttribute("dto", bean);
		request.getRequestDispatcher("EL/ex02.jsp").forward(request, response);
	}

}
