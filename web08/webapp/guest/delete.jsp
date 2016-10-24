<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.guest.model.DBConn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bean" class="com.guest.model.GuestBean"></jsp:useBean>

<%!
	private Connection conn;
	private PreparedStatement pstmt;
%>
<%
	bean.setSabun(Integer.parseInt(request.getParameter("idx")));
	String sql="delete from guest where sabun=?";
	int cnt=0;
	try{
		conn=DBConn.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bean.getSabun());
		cnt=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
<%if(cnt>0){
	response.sendRedirect("/web08/index.jsp");
}else{ %>
<jsp:forward page="editform.jsp">
	<jsp:param value="<%=bean.getSabun() %>" name="idx"/>
</jsp:forward>
<%} %>
</body>
</html>










