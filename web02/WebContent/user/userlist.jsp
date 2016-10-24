<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>user 목록</h1>
	<%
	int cnt =0;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	String sql ="select * from guestuser";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		out.print("no:"+(++cnt));
		out.print("<a href=\"userone.jsp?name="
				+rs.getString(3)+"\">id:"+rs.getString(1));
		out.print(",pw:"+rs.getString(2));
		out.println(",name:"+rs.getString(3)+"</a><br>");
	}
	%>
	<h2><a href="addform.jsp">[입력]</a></h2>
</body>
</html>











