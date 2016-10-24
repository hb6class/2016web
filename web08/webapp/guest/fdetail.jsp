<%@ page import="com.guest.model.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<%
	GuestBean bean = new GuestBean();
	try{
		conn = DBConn.getConnection();
		pstmt=conn.prepareStatement("select * from guest where sabun=?");
		pstmt.setInt(1, Integer.parseInt(request.getParameter("idx")));
		rs = pstmt.executeQuery();
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
<body>
	<table border='1' cellpadding="0" cellspacing="0" 
			bordercolor="red" width="80%" align="center"  adbcdefg="aaa">
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/header.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td width='200' valign="top">
				<jsp:include page="../frame/menu.jsp"></jsp:include>
			</td>
			<td>
				<!-- content -->
				<jsp:include page="detail.jsp">
					<jsp:param value="<%=bean.getSabun() %>" name="sabun"/>
					<jsp:param value="<%=bean.getName() %>" name="name"/>
					<jsp:param value='<%=bean.getNalja() %>' name="nalja"/>
					<jsp:param value='<%=bean.getPay() %>' name="pay"/>
				</jsp:include>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/footer.jsp"></jsp:include>
			</td>
		</tr>
	
	
	</table>
</body>
</html>