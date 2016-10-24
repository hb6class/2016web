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
	private final String driver="oracle.jdbc.driver.OracleDriver";
	private final String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private final String id="scott";
	private final String pw="tiger";
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	private int cnt;
%>
<%
	String sql ="update guest set ";
	sql+=" name='"+request.getParameter("name")+"',";
	sql+=" nalja=sysdate,";
	sql+=" pay="+request.getParameter("pay");
	sql+=" where sabun="+request.getParameter("sabun");
	System.out.println(sql);
	try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	stmt = conn.createStatement();
	cnt = stmt.executeUpdate(sql);
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