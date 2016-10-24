<%@ page import="java.sql.*" %>
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
		String sql="select * from guest where sabun=?";
		try{
			Class.forName(driver);
			conn=DriverManager.getConnection(url,id,pw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(request.getParameter("idx")));
			rs = pstmt.executeQuery();
			if(rs.next()){
	%>
	<h1>상세페이지</h1>
	<table>
		<tr>
			<td>사번</td>
			<td><%=rs.getInt("sabun") %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=rs.getString("name") %></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=rs.getDate("nalja") %></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><%=rs.getInt("pay") %></td>
		</tr>
	
	</table>
	<p><a href="editform.jsp?idx=<%=rs.getInt("sabun") %>&name=<%=rs.getString("name") %>&pay=<%=rs.getInt("pay") %>">[수정]</a></p>
	<%
				}
			}catch(Exception ex){}finally{
				rs.close();
				pstmt.close();
				conn.close();
			}
	%>
</body>
</html>