package com.hb.srv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlResult extends HttpServlet {
	private final String url="jdbc:oracle:thin:@localhost:1521:xe";
	private final String user="scott";
	private final String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<h1>");
		out.println("경고-정상적인 접근이 아닙니다");
		out.println("</h1>");
		out.println("</html>");
		out.println("</html>");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String sabun = request.getParameter("sabun");
		String name = request.getParameter("name");
		int data1=0;
		String data2="";
		
		String sql = "select * from guest ";
				sql+=" where sabun=? and name=?";
		int result=0;	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(sabun));
			pstmt.setString(2, name);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result++;
				data1=rs.getInt("sabun");
				data2=rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		resp.setContentType("text/xml; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");		 
		out.println("<root>");
		out.println("<result>"+result+"</result>");
		out.println("<sabun>"+data1+"</sabun>");
		out.println("<name>"+data2+"</name>");
		out.println("</root>");

	}
}
