<%@page import="com.mvc2.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%GuestDto bean=(GuestDto)request.getAttribute("bean"); %>
	<h1>상세페이지</h1>
	<p>sabun:<%=bean.getSabun() %></p>
	<p>name:<%=bean.getName() %></p>
	<p>nalja:<%=bean.getNalja() %></p>
	<p>pay:<%=bean.getPay() %></p>
	<p><a href="edit.naver?idx=<%=request.getParameter("idx")%>">수 정</a></p>
</body>
</html>