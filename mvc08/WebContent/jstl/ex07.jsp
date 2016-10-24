<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date nalja = new Date();
	pageContext.setAttribute("nalja", nalja);
	pageContext.setAttribute("pay", 54000);
%>

<p> <fmt:formatDate value="${nalja}" pattern="yy-MM-dd"/> </p>
<p>${nalja}</p>
<p><fmt:formatNumber value="${pay }" pattern="0,000"/></p>
<p><fmt:formatNumber value="${pay*2 }" pattern="0,000"/></p>
<fmt:parseDate var="day" value="2002-01-01" pattern="yyyy-MM-dd" />
<p><fmt:formatDate value="${day }" pattern="yy/MM/dd"/> </p>
<p>${day }</p>
<fmt:parseNumber var="won1" value="2000" />
<!-- ISO-4217 -->
<fmt:formatNumber var="won" type="currency" currencySymbol="$" value="${won1 }"/>
<p>${won }</p>
</body>
</html>






