package com.mvc2.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDto;

@WebServlet("/")
public class IndexController extends HttpServlet {
	
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="scott";
	private String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private ArrayList<GuestDto> list;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		list= new ArrayList<GuestDto>();
		String sql="SELECT SABUN,NAME,NALJA,PAY FROM GUEST";
		//resp.getWriter().print("<h1>TEST PAGE</h1>");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				GuestDto bean = new GuestDto();
				bean.setSabun(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setNalja(rs.getDate(3));
				bean.setPay(rs.getInt(4));
				list.add(bean);
			}
		}catch(Exception e){System.out.println(e.toString());
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		
		// view ю╖юс
		req.setAttribute("list", list);
		RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
		rd.forward(req, resp);
	} // doGet end
} //class end















