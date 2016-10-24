<%@ page import="com.bbs.util.DBConnection, com.bbs.bean.BbsBean, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private BbsBean bean;
	private int result;
%>
<%
	String sql ="update bbs01 set title=?,content=? where rnum=?";
	DBConnection db = new DBConnection();
	bean = new BbsBean();
	bean.setRnum(Integer.parseInt(request.getParameter("rnum")));
	bean.setTitle(request.getParameter("title"));
	bean.setContent(request.getParameter("content"));
	try{
		conn=db.getConn();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bean.getTitle());
		pstmt.setString(2, bean.getContent());
		pstmt.setInt(3, bean.getRnum());
		result = pstmt.executeUpdate();
	}catch(Exception ex){}finally{
		if(conn!=null)conn.close();
	}
	if(result>0){
		response.sendRedirect("list.jsp?msg="+bean.getRnum());
	}else{
		response.sendRedirect("detail.jsp?idx="+bean.getRnum());		
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>