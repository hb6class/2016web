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
	<h1>수정페이지</h1>
	<%
		GuestDto dto=(GuestDto)request.getAttribute("bean");
	%>
	<form action="update.naver" method="post">
	<input type="hidden" name="idx" value="<%=request.getParameter("idx")%>">
		<p><label for="sabun">sabun</label>
		<input type="text" value="<%=dto.getSabun() %>" name="sabun" id="sabun" /></p>
		<p><label for="name">name</label>
		<input type="text" value="<%=dto.getName() %>" name="name" id="name" /></p>
		<p><label for="pay">pay</label>
		<input type="text" value="<%=dto.getPay() %>" name="pay" id="pay" /></p>
		<p><button type="submit">수 정</button>
		<button type="reset">삭 제</button></p>
	</form>
</body>
</html>