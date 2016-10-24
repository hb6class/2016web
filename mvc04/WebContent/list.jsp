<%@ page import="com.mvc2.model.GuestDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<GuestDto> list=(ArrayList<GuestDto>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>리스트</h1>
	<%
	int no=0;
	for(GuestDto bean:list){ %>
	<p><a href="detail.naver?idx=<%=no%>"><%=bean %></a></p>
	<%
	no++;
	} 
	%>
	<p><a href="add.naver">입력</a></p>
</body>
</html>