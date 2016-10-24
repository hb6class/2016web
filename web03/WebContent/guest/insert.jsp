<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	<%!
		private final String driver ="oracle.jdbc.driver.OracleDriver";
		private final String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		private final String user="scott";
		private final String password="tiger";
		private Connection conn;
		private Statement stmt;
		private ResultSet rs;
		private int cnt;
	%>
	<%
		String sql ="insert into guest";
		sql+=" (sabun,name,nalja,pay) values (";
		sql+=request.getParameter("sabun")+",'";
		sql+=request.getParameter("name")+"',sysdate,";
		sql+=request.getParameter("pay")+")";
		System.out.println(sql);
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		cnt = stmt.executeUpdate(sql);
		}catch(Exception ex){}finally{
			conn.close();
		}
		if(cnt>0){
			response.sendRedirect("list.jsp");
		}
	%>
<body>
	<h1>입력오류</h1>
	<h3><a href="addform.jsp">이전페이지로 이동</a></h3>
</body>
</html>