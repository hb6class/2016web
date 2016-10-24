<%@ page import="java.sql.*" %>
<%@ page import="com.guest.model.GuestBean" %>
<%@ page import="com.my.oracle.OraDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<jsp:useBean id="bean" class="com.guest.model.GuestBean"></jsp:useBean>
<%
	//GuestBean bean = new GuestBean();
	String sql="select * from guest where sabun=?";
	try{
		conn=OraDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(request.getParameter("idx")));
		rs = pstmt.executeQuery();
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상세페이지</h1>
	<table>
		<tr>
			<td>사번</td>
			<td><jsp:getProperty property="sabun" name="bean"/> </td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="bean"/> </td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><jsp:getProperty property="nalja" name="bean"/> </td>
		</tr>
		<tr>
			<td>금액</td>
			<td><jsp:getProperty property="pay" name="bean"/> </td>
		</tr>
	</table>
	<p>
		<a href="<%=request.getParameter("root")%>/frame.jsp?fnm=edit&sabun=<%=bean.getSabun()%>&name=<%=bean.getName() %>&pay=<%=bean.getPay()%>">[수 정]</a>
		<a href="<%=request.getParameter("root")%>/delete.jsp?sabun=<%=bean.getSabun()%>">[삭 제]</a>
	</p>
</body>
</html>







