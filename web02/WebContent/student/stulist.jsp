<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="800" align="center">
		<tr height="80">
			<th width="250">
				<a href="/web02/student/main.jsp">
				<img alt="logo" src="../imgs/logo_ai.png" width="200">
				</a>
			</th>
			<th width="100" bgcolor="red"><a href="stulist.jsp">조회</a></th>
			<th width="100"><a href="stuform.jsp">학생등록</a></th>
			<th width="100"><a href="stuadd.jsp">성적입력</a></th>
			<th width="100"><a href="studel.jsp">데이터삭제</a></th>
			<th></th>
		</tr>
		<tr>
			<td colspan="6" height="400">
				<center>
				<!-- content start -->
				<h1>학생성적리스트</h1>
				<table border="1" width="80%">
					<tr>
						<th>학번</th>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
					</tr>
					<%
					String sql ="select * from student3";
					Connection conn =null;
					Statement stmt = null;
					ResultSet rs = null;
					try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					while(rs.next()){
					%>
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
						<td><%=rs.getInt(4) %></td>
						<td><%=rs.getInt(5) %></td>
					</tr>
					<%
					}
					}catch(Exception ex){
						out.println("<h1>빠른시일내에 복구하겠습니다</h1>");
					}finally{
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					}
					%>
				
				</table>
				<!-- content end -->
				</center>
			</td>
		</tr>
	</table>
</body>
</html>