package com.hb.srv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuestList extends HttpServlet {
	private final String url="jdbc:oracle:thin:@localhost:1521:xe";
	private final String user="scott";
	private final String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String sql="select * from guest";
		ArrayList<HashMap> list = new ArrayList<HashMap>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, password);
			if(req.getParameter("sabun")!=null){
				sql+=" where sabun=?";
			}
			pstmt=conn.prepareStatement(sql);
			if(req.getParameter("sabun")!=null){
				pstmt.setInt(1, Integer.parseInt(req.getParameter("sabun")));
			}
			rs=pstmt.executeQuery();
			while(rs.next()){
				HashMap<String,String> map = new HashMap<String,String>();
				map.put("sabun", rs.getInt("sabun")+"");
				map.put("name", rs.getString("name"));
				map.put("nalja", rs.getDate("nalja").toString());
				map.put("pay", rs.getInt("pay")+"");
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
				} catch (SQLException e) {e.printStackTrace();}
		}
		
		resp.setContentType("text/xml; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.println("<rows>");
		for(int i=0; i<list.size(); i++){
			HashMap<String,String> map =list.get(i);
			out.println("<row>");
			out.println("<sabun>"+map.get("sabun")+"</sabun>");
			out.println("<name>"+map.get("name")+"</name>");
			out.println("<nalja>"+map.get("nalja")+"</nalja>");
			out.println("<pay>"+map.get("pay")+"</pay>");
			out.println("</row>");
		}
		out.println("</rows>");
	}
}










