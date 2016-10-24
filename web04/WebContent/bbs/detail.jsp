<%@ page import="com.bbs.util.DBConnection" %>
<%@ page import="com.bbs.bean.BbsBean" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private PreparedStatement pstmt2;
	private ResultSet rs;
	private BbsBean bean;
%>

<%
	String sql="select * from bbs01 where rnum=?";
	String sql2="update bbs01 set cnt=? where rnum=?";
	
	DBConnection db = new DBConnection();
	conn = db.getConn();
	try{
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, Integer.parseInt(request.getParameter("idx")));
	rs = pstmt.executeQuery();
	bean = new BbsBean();
	if(rs.next()){
		bean.setRnum(rs.getInt("rnum"));
		bean.setTitle(rs.getString("title"));
		bean.setId(rs.getString("id"));
		bean.setContent(rs.getString("content"));
		bean.setNalja(rs.getDate("nalja"));
		bean.setCnt(rs.getInt("cnt")+1);
	}
	pstmt2 = conn.prepareStatement(sql2);
	pstmt2.setInt(1, bean.getCnt());
	pstmt2.setInt(2, bean.getRnum());
	pstmt2.executeUpdate();
	}catch(Exception ex){}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(pstmt2!=null)pstmt2.close();
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
	<%@ include file="../template/header.jsp" %>
	<center>
	<h1>상세페이지</h1>
	<table width="400">
		<tr>
			<td bgcolor="#eee">제목</td>
			<td colspan="5"><%=bean.getTitle() %></td>
		</tr>
		<tr>
			<td bgcolor="#eee">글쓴이</td>
			<td><%=bean.getId() %></td>
			<td bgcolor="#eee">날짜</td>
			<td><%=bean.getNalja() %></td>
			<td bgcolor="#eee">조회수</td>
			<td><%=bean.getCnt() %></td>
		</tr>
		<tr height="100">
			<td bgcolor="#eee">내용</td>
			<td colspan="5"><%=bean.getContent() %></td>
		</tr>
	</table>
	<p>
		<a href="list.jsp">[목록으로]</a>
		<a href="editform.jsp?idx=<%=bean.getRnum()%>&title=<%=bean.getTitle() %>&content=<%=bean.getContent() %>">[수 정]</a>
		<a href="delform.jsp?idx=<%=bean.getRnum()%>">[삭 제]</a>
	</p>
	</center>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>








