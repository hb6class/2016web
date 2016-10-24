package com.guest.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuestInsert extends HttpServlet {
	
	private Connection conn;
	private PreparedStatement pstmt;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String sql ="insert into guest values";
		sql+=" (guest_seq.nextval,?,sysdate,?)";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, req.getParameter("name"));
			pstmt.setInt(2, Integer.parseInt(req.getParameter("pay")));
			pstmt.executeUpdate();
		} catch (Exception e) {} finally {
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
				}
		}
		resp.sendRedirect("/web08/");
		
	}
}







