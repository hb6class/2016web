<%@ page import="com.guest.model.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		private Connection conn;
		private PreparedStatement pstmt;
	%>
	<%
		String sql="insert into guest values";
		sql+=" (guest_seq.nextval,?,sysdate,?)";
		try{
			conn=DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("name"));
			pstmt.setInt(2, Integer.parseInt(request.getParameter("pay")));
			pstmt.executeUpdate();
		}finally{
			if(conn!=null)conn.close();
		}
	%>
	<jsp:forward page="../index.jsp"></jsp:forward>
</body>
</html>











