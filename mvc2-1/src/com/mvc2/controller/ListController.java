package com.mvc2.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDto;
import com.mvc2.model.OraDB;

@WebServlet("/guest/list")
public class ListController extends HttpServlet {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql="select * from guest";
		ArrayList<GuestDto> list= new ArrayList<GuestDto>();
		try {
			conn = OraDB.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				GuestDto dto= new GuestDto();
				dto.setSabun(rs.getInt("sabun"));
				dto.setName(rs.getString("name"));
				dto.setNalja(rs.getDate("nalja"));
				dto.setPay(rs.getInt("pay"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {}
		}
		//view ю╖юс
		request.setAttribute("guestlist", list);
		RequestDispatcher rd = request.getRequestDispatcher("/list.jsp");
		rd.forward(request, response);
		
	}//doGet end

}//class end















