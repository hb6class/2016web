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
	private int cnt;
	%>
	<%
		int sabun=Integer.parseInt(request.getParameter("sabun"));
		String name = request.getParameter("name");
		int pay=Integer.parseInt(request.getParameter("pay"));
		String sql ="insert into guest (sabun,name,nalja,pay)";
		sql+=" values (?,?,sysdate,?)";
		try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, sabun);
		pstmt.setString(2, name);
		pstmt.setInt(3, pay);
		cnt = pstmt.executeUpdate();
		}catch(Exception ex){}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		if(cnt>0)response.sendRedirect("list.jsp");
	%>
<body>
	<h1>입력실패</h1>
	<p><a href="">이전페이지로 이동</a></p>
</body>
</html>