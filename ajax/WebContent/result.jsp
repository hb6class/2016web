<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	if(id!=null){
		session.setAttribute("id", id);
		session.setAttribute("pw", 1234);
		session.setAttribute("pw", null);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="logout.jsp">logout</a>
	<h1><%=session.getAttribute("id") %>님 환영합니다</h1><%=session.getId() %>
	<a href="link1.jsp">link1</a><%=session.getMaxInactiveInterval() %>
	<br/>
	
</body>
</html>









