<%@ page import="com.mvc2.model.GuestDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	GuestDto bean=(GuestDto)request.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상세페이지</h1>
	<p><span>사 번</span><span><%=bean.getSabun() %></span></p>
	<p><span>이 름</span><span><%=bean.getName() %></span></p>
	<p><span>날 짜</span><span><%=bean.getNalja() %></span></p>
	<p><span>금 액</span><span><%=bean.getPay() %></span></p>
	<p>
		<a href="./">[목 록]</a>
		<a href="edit?idx=<%=bean.getSabun() %>">[수 정]</a>
		<a href="del?idx=<%=bean.getSabun() %>">[삭 제]</a>
	</p>
</body>
</html>