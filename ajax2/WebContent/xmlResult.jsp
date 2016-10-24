<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%!
	private final String url="jdbc:oracle:thin:@localhost:1521:xe";
	private final String user="scott";
	private final String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<%
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
	}finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
	
%>
<root>
	<result><%=result %></result>
	<sabun><%=data1 %></sabun>
	<name><%=data2 %></name>
</root>













