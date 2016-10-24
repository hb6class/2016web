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
		private int cnt;
	%>
	<%
		String sql="update guest set name=?,nalja=sysdate,pay=? where sabun=?";
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("name"));
		pstmt.setInt(2, Integer.parseInt(request.getParameter("pay")));
		pstmt.setInt(3, Integer.parseInt(request.getParameter("sabun")));
		cnt = pstmt.executeUpdate();
		}catch(Exception ex){}finally{
			conn.close();
		}
		if(cnt>0)response.sendRedirect("list.jsp");
	%>
<body>
	<h1>수정실패</h1>
	<p><a href="detail.jsp?idx=<%=request.getParameter("sabun")%>">이전페이지로 이동</a></p>
</body>
</html>