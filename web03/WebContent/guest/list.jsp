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
<%!
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String id="scott";
	String pw="tiger";
	String sql="select rownum as rn,sabun,name,nalja,pay from guest order by sabun desc";
	String sql2="select count(sabun) as cnt from guest";
	Connection conn;
	Statement stmt;
	ResultSet rs;
	int cnt;
%>
<body>
	<h1>������</h1>
	<table border="1" width="80%">
		<tr>
			<th>��ȣ</th>
			<th>���</th>
			<th>����</th>
			<th>��¥</th>
			<th>�ݾ�</th>
			<th>����</th>
		</tr>
		<%
		
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		stmt = conn.createStatement();
		rs=stmt.executeQuery(sql);
		%>
		<%
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getInt("rn") %></td>
			<td><%=rs.getInt("sabun") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getDate("nalja") %></td>
			<td><%=rs.getInt("pay") %></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt("sabun") %>">����</a></td>
		</tr>
		<%
			}
		}catch(Exception ex){
			System.out.println("��������");
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			//if(conn!=null)conn.close();
		}
		%>
	</table>
	
	<%
	try{
	stmt=conn.createStatement();
	rs = stmt.executeQuery(sql2);
	if(rs.next()){
		cnt = rs.getInt("cnt");
	}
	}catch(Exception ex){
		System.out.println("�Ʒ��ʿ���");
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
	
	<h3>���ο� : <%=cnt %>��</h3>
	
	<p>
		<a href="addform.jsp">[�Է�]</a>
	</p>
</body>
</html>










