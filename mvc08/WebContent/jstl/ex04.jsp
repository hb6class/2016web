<%@page import="java.net.URI"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>외부문서 파싱</h1>
	<c:url var="daum" value="https://search.naver.com/search.naver">
		<c:param name="query">aaa</c:param>
	</c:url>
	<%
		URI url= new URI("http://www.daum.net");
		pageContext.setAttribute("naver", url);
		
	%>
	<a href="${daum }">naver</a>
	<a href="${naver }">daum</a>
	<c:url var="ex02" value="/jstl/ex02.jsp">
		<c:param name="i">3</c:param>
	</c:url>
	<c:url var="root" value="/"/>
	<ul>
		<li>${ex02 }</li>
		<li>${root }</li>
		<li><%=request.getContextPath() %></li>
	</ul>
	<p><a href="${ex02 }">ex02</a></p>
</body>
</html>







