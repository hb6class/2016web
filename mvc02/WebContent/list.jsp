<%@ page import="java.util.ArrayList"%>
<%@ page import="com.mvc2.model.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>환영합니다</title>
</head>
<body>
	<h1>리스트</h1>
	<table>
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<!--  -->
<%
String root = request.getContextPath();
ArrayList<GuestDto> list=(ArrayList<GuestDto>)request.getAttribute("list");
		for(GuestDto dto:list){
%>
		<tr>
			<td><a href="detail?idx=<%=dto.getSabun() %>"><%=dto.getSabun() %></a></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getNalja() %></td>
			<td><%=dto.getPay() %></td>		
		</tr>
<%} %>
	</table>
	
	<p><a href="<%=root %>/add">글쓰기</a></p>
</body>
</html>









