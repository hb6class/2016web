package com.guest.srv;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guest.model.Conn;

public class UpdateOne extends HttpServlet {
	
	private Connection conn;
	private Statement stmt;
	private int result;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String pay = req.getParameter("pay");
		String sabun = req.getParameter("sabun");
		String sql = "update guest set name='"+name;
		sql+="',pay="+pay+"where sabun="+sabun;
		
		conn = Conn.getConn();
		try{
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		}catch(Exception ex){}finally{
			try{
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2){}
		}
		
		String ur="edit.naver?idx="+sabun;
		if(result>0)ur="list.naver";
		resp.sendRedirect(ur);
		
	}
}












