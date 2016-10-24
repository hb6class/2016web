<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		String sql ="select max(sabun) as mx from guest";
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,password);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()){
			cnt = rs.getInt("mx");
		}
		}catch(Exception ex){}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		cnt+=1111;
	%>
<body>
	<h1>입력페이지</h1>
	<form action="insert.jsp">
		<table>
			<tr>
				<td>사번</td>
				<td><input type="text" name="sabun" value="<%=cnt %>" readonly="readonly"> </td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"> </td>
			</tr>
			<tr>
				<td>금액</td>
				<td><input type="text" name="pay"> </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>