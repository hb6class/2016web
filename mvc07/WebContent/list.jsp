<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>list page</h1>
	
	<c:forEach var="bean" items="${alist }">
	<p>
		<span>${bean.sabun}</span>
		<span>${bean.name}</span>
		<span>${bean.nalja}</span>
		<span>${bean.pay}</span>
	</p>
	</c:forEach>
	
	
</body>
</html>