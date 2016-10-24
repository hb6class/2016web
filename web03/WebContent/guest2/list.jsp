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
		private final String url="jdbc:oracle:thin:@localhost:1521:xe";
		private final String id="scott";
		private final String pw="tiger";
		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;
		private int tot;
	%>
<body>
	<%	
		String sql="select * from guest";
	try{	
		Class.forName(driver);
		conn=DriverManager.getConnection(url,id,pw);
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		//stmt = conn.createStatement();
		//rs = stmt.executeQuery(sql);
	%>
	<h1>리스트페이지</h1>
	<table>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
			<th>선택</th>
		</tr>
		<%
		while(rs.next()){
		%>
		<tr>
			<td><%=rs.getInt("sabun") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getDate("nalja") %></td>
			<td><%=rs.getInt("pay") %></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>">선택</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}catch(Exception ex){
		out.println("<h1>빠른시일에 처리하겠습니다</h1>");
	}finally{
		conn.close();
	}
	%>
	<p><a href="addform.jsp">[입 력]</a></p>
</body>
</html>













