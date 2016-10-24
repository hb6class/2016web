<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private final String driver="oracle.jdbc.driver.OracleDriver";
	private final String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private final String id="scott";
	private final String pw="tiger";
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
%>
<%
	String sql ="select * from guest where sabun=";
	sql+=request.getParameter("idx");
	int param1=0;
	String param2=null;
	Date param3 = null;
	int param4=0;
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, id, pw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()){
			param1 = rs.getInt("sabun");
			param2 = rs.getString("name");
			param3 = rs.getDate("nalja");
			param4 = rs.getInt("pay");
		}
	}catch(Exception ex){}finally{
		conn.close();
	}
%>
<body>
	<h1><%=request.getParameter("idx") %>상세페이지</h1>
	<table>
		<tr>
			<td width="150" bgcolor="#ddd" align="center">사 번</td>
			<td><%=param1 %></td>
		</tr>
		<tr>
			<td bgcolor="#ddd" align="center">이 름</td>
			<td><%=param2 %></td>
		</tr>
		<tr>
			<td bgcolor="#ddd" align="center">날 짜</td>
			<td><%=param3 %></td>
		</tr>
		<tr>
			<td bgcolor="#ddd" align="center">금 액</td>
			<td><%=param4 %></td>
		</tr>
	</table>
	<p>
		<a href="editform.jsp?idx=<%=param1 %>&name=<%=param2 %>&pay=<%=param4 %>">[수 정]</a>
		<a href="delete.jsp?idx=<%=param1 %>">[삭 제]</a>
	</p>
</body>
</html>









