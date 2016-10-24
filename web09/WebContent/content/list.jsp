<%@ page import="com.my.oracle.OraDB" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.guest.model.GuestBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
%>
<%
	String key=request.getParameter("key");
	String keyword=request.getParameter("keyword");
	if(key==null)key="name";
	if(keyword==null)keyword="";
	ArrayList<GuestBean> list = new ArrayList<GuestBean>();
	String sql="select * from guest where "+key+" like '%";
	sql+=keyword+"%' order by sabun desc";
	try{
		conn=OraDB.getConnection();
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			GuestBean bean = new GuestBean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
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
	<h1>리스트페이지</h1>
	<table width="90%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<th>사 번</th>
			<th>이 름</th>
			<th>날 짜</th>
			<th>금 액</th>
		</tr>
		<% 
		for(int i=0; i<list.size(); i++){
			GuestBean bean = list.get(i);
		%>
		<tr>
			<td><a href="<%=request.getParameter("root") %>/frame.jsp?fnm=detail&idx=<%=bean.getSabun() %>"><%=bean.getSabun() %></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%
		}
		%>
	</table>
	<form>
		<input type="hidden" name="fnm" value="list">
		
		<select name="key">
			<option value="sabun">사번</option>
			<option value="name" selected="selected">이름</option>
			<option value="pay">금액</option>
		</select>
		<input type="text" name="keyword">
		<input type="submit" value="검 색">
	</form>
</body>
</html>










