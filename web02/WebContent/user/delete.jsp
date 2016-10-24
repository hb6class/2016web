<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String url ="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";
	String sql ="delete from guestuser where name='"
					+request.getParameter("name")+"'";
	System.out.println(sql);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	int result = stmt.executeUpdate(sql);
	if(result>0){
		out.println("<h1>삭제성공</h1>");
	}else{
		out.println("<h1>삭제실패</h1>");
	}
	%>
	<h2><a href="userlist.jsp">LIST GO</a></h2>
</body>
</html>








