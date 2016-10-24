<%@page import="com.mvc2.model.GuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<GuestDto> list 
	= (ArrayList<GuestDto>)request.getAttribute("alist");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>LIST PAGE</h1>
	<%for(GuestDto dto : list){ %>
	<p><%=dto.getSabun() %>:<%=dto.getName() %>:
	<%=dto.getNalja() %>:<%=dto.getPay() %></p>
	<%} %>
	<p><a href="./add">입력</a></p>
</body>
</html>









