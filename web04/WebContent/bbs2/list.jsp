<%@ page import="com.my.ora.GuestList" %>
<%@ page import="com.my.bean.BBsBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jsp" %>
	<h1>방명록 리스트</h1>
	<%
	GuestList bbs = new GuestList();
	ArrayList<BBsBean> list = bbs.getList();
	for(BBsBean bean : list){
		out.println("<p>"+bean.getTitle()
				+", "+bean.getId()
				+", "+bean.getContent());
	}
	%>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>