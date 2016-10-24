<%@ page import="java.sql.*" %>
<%@ page import="com.my.oracle.OraDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private int cnt;
%>
<%
	String sql="delete from guest where sabun=?";
	try{
		conn=OraDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(request.getParameter("sabun")));
		cnt=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	if(cnt>0)response.sendRedirect("frame.jsp?fnm=list");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>삭제 실패</h1>
</body>
</html>