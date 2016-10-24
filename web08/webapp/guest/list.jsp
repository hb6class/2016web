<%@ page import="java.util.ArrayList"%>
<%@ page import="com.guest.model.DBConn"%>
<%@ page import="com.guest.model.GuestBean"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
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
	Connection conn;
	Statement stmt;
	ResultSet rs;
%>
<%
	ArrayList<GuestBean> list = new ArrayList<GuestBean>();
	try{
		conn=DBConn.getConnection();
		stmt = conn.createStatement();
		rs=stmt.executeQuery("select * from guest");
		while(rs.next()){
			GuestBean bean = new GuestBean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>
	<h1>리스트 페이지</h1>
	<table border="1" align="center" width="400">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<% for(GuestBean bean : list){ %>
		<tr>
			<td><a href="guest/fdetail.jsp?idx=<%=bean.getSabun() %>"><%=bean.getSabun() %></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
	</table>
	
</body>
</html>









