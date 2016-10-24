package com.mvc2.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDto;

@WebServlet("/detail")
public class DetailController extends HttpServlet {
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="scott";
	private String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql="SELECT SABUN,NAME,NALJA,PAY FROM GUEST WHERE SABUN=?";
		GuestDto bean=null;
		String param=request.getParameter("idx").trim();
		
		int sabun=0;
		if(!("".equals(param)||param==null)){
			sabun=Integer.parseInt(param);
		}
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean = new GuestDto();
				bean.setSabun(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setNalja(rs.getDate(3));
				bean.setPay(rs.getInt(4));
			}
		}catch(Exception e){System.out.println(e.toString());
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		
		request.setAttribute("bean", bean);
		RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
		rd.forward(request, response);
	}//doGet end

}//class end
