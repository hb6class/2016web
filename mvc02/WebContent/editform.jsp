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
	<h1>수정페이지</h1>
	<form action="update">
		<p><label for="sabun">사번</label>
		<input type="text" value="<%=bean.getSabun() %>" id="sabun" name="sabun" readonly="readonly"/></p>
		<p><label for="name">이름</label>
		<input type="text" value="<%=bean.getName() %>" id="name" name="name" /></p>
		<p><label for="nalja">날짜</label>
		<input type="text" value="<%=bean.getNalja() %>" id="nalja" name="nalja" disabled="disabled"/></p>
		<p><label for="pay">금액</label>
		<input type="text" value="<%=bean.getPay() %>" id="pay" name="pay" /></p>
		<p>
			<button type="submit">수 정</button>
			<button type="reset">취 소</button>
		</p>
	</form>
</body>
</html>









