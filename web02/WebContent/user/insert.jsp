<%@ page import="java.sql.DriverManager,java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2><%=request.getParameter("id") %></h2>
	<h2><%=request.getParameter("pw") %></h2>
	<h2><%=request.getParameter("name") %></h2>
	
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String sql ="insert into guestuser "+
				"(id,pw,name) values ('"
				+id+"','"
				+pw+"','"
				+name+"')";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	int cnt  = stmt.executeUpdate(sql);
	if(cnt>0){
	%>
	<h1>입력완료</h1>
	<%}else{ %>
	<h1>입력실패</h1>
	<%
	}
	System.out.println(sql);
	%>
	<h1><a href="userlist.jsp">[list go]</a></h1>
</body>
</html>











