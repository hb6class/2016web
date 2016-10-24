<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상세페이지</h1>
	<table>
		<tr>
			<td>사번</td>
			<td><%=request.getParameter("sabun") %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=request.getParameter("nalja") %></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><%=request.getParameter("pay") %></td>
		</tr>
	</table>
	<p>
		<a href="editform.jsp?idx=<%=request.getParameter("sabun") %>">[수 정]</a>
		<a href="delete.jsp?idx=<%=request.getParameter("sabun") %>">[삭 제]</a>
	</p>
</body>
</html>