<%@ page import="java.sql.*" %>
<%@ page import="com.my.oracle.OraDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bean" class="com.guest.model.GuestBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private int cnt;
%>
<%
	String sql="insert into guest values (?,?,sysdate,?)";
	try{
		conn=OraDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bean.getSabun());
		pstmt.setString(2, bean.getName());
		pstmt.setInt(3, bean.getPay());
		cnt=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	if(cnt>0){
		response.sendRedirect(application.getContextPath()
				+"/frame.jsp?fnm=list");
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력실패</h1>
</body>
</html>