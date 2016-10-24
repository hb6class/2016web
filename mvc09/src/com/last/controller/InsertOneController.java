package com.last.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert.do")
public class InsertOneController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result=0;
		String param3=request.getParameter("pay");
		int pay=0;
		if("".equals(param3)){
			request.setAttribute("err3", "값이 비었습니다");
		}else{
			try{
			pay=Integer.parseInt(param3);
			}catch(Exception e){
				request.setAttribute("err3", "숫자로 적어주세요");
			}
		}
		
		
		if(result>0){
			response.sendRedirect("list.do");
		}else{
			request.getRequestDispatcher("guest/addform.jsp").forward(request, response);
		}
		
	}

}
