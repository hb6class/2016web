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
	<h1>����Ʈ������</h1>
	<table>
		<tr>
			<th>���</th>
			<th>�̸�</th>
			<th>��¥</th>
			<th>�ݾ�</th>
			<th>����</th>
		</tr>
		<%
		while(rs.next()){
		%>
		<tr>
			<td><%=rs.getInt("sabun") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getDate("nalja") %></td>
			<td><%=rs.getInt("pay") %></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>">����</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}catch(Exception ex){
		out.println("<h1>�������Ͽ� ó���ϰڽ��ϴ�</h1>");
	}finally{
		conn.close();
	}
	%>
	<p><a href="addform.jsp">[�� ��]</a></p>
</body>
</html>













