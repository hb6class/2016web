<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String sql = "update guestuser set id='"
				+id+"',pw='"+pw+"' where name='"+name+"'";
	System.out.println(sql);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	int result = stmt.executeUpdate(sql);
	if(result>0){
	%>
	<h1>수정완료</h1>
	<%}else{ %>
	<h1>수정실패</h1>
	<%} %>
	<h2><a href="userlist.jsp">LIST GO</a></h2>
</body>
</html>















