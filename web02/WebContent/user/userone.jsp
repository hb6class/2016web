<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
	String name = request.getParameter("name");
	String sql ="select * from guestuser where name='"
				+name+"'";
	System.out.println(sql);
	
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String id="scott";
	String pw="tiger";
	String[] param = new String[3];
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection(url,id,pw);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
		param[0]=rs.getString(1);
		param[1]=rs.getString(2);
		param[2]=rs.getString(3);
	}
	%>
	<h1><%=param[2] %>님의 상세보기</h1>
	<p>id:<%=param[0] %></p>
	<p>pw:<%=param[1] %></p>
	<p>name:<%=param[2] %></p>
	<p>
		<a href="userlist.jsp">[LIST]</a>
		<a href="editform.jsp?id=<%=param[0] %>&pw=<%=param[1] %>&name=<%=param[2] %>">[EDIT]</a>
		<a href="delete.jsp?name=<%=param[2] %>">[DELETE]</a>
	</p>
</body>
</html>