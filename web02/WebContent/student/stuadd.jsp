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
			<th width="100"><a href="stulist.jsp">조회</a></th>
			<th width="100"><a href="stuform.jsp">학생등록</a></th>
			<th width="100" bgcolor="red"><a href="stuadd.jsp">성적입력</a></th>
			<th width="100"><a href="studel.jsp">데이터삭제</a></th>
			<th></th>
		</tr>
		<tr>
			<td colspan="6" height="400">
				<center>
				<!-- content start -->
				<h1>성적입력</h1>
				<form action="stuadd2.jsp">
				<select name="idx">
					<%
					String sql = "select idx from student3";
					String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String user = "scott";
					String password = "tiger";
					Connection conn = null;
					Statement stmt = null;
					ResultSet rs = null;
					try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					conn = DriverManager.getConnection(url, user, password);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					while(rs.next()){
						int temp=rs.getInt(1);
					%>
					<option value="<%=temp%>"><%=temp %></option>
					<%
					}
					}catch(Exception e){
					}finally{
						if(conn!=null)conn.close();
					}
					%>					
				</select>
				<input type="submit" value="학생선택">
				</form>
				<!-- content end -->
				</center>
			</td>
		</tr>
	</table>
</body>
</html>