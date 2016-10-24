<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean2" class="com.guest.model.GuestBean" scope="request"></jsp:useBean>
	<jsp:getProperty property="sabun" name="bean2"/>
	<a href="ex03.jsp">ex03</a>
</body>
</html>