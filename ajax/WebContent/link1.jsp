<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="link2.jsp">link2</a><%=session.getId() %>
	<%
	Enumeration<String> enu =session.getAttributeNames();
	while(enu.hasMoreElements()){
		String nm=(String)enu.nextElement();
		System.out.print(nm+":");
		System.out.println(session.getAttribute(nm));
		
	}
	
	%>
</body>
</html>