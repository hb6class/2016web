<%@page import="com.mvc2.model.GuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판리스트</h1>
	<%
	ArrayList<GuestDto> list =
	(ArrayList<GuestDto>)request.getAttribute("guestlist");
	for(int i=0; i<list.size(); i++){
		GuestDto bean =list.get(i);
	%>
	<p>
		<span><%=bean.getSabun() %></span>
		<span><%=bean.getName() %></span>
		<span><%=bean.getNalja() %></span>
		<span><%=bean.getPay() %></span>
	</p>
	<%} %>
</body>
</html>












