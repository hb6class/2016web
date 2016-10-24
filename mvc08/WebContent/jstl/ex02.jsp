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
	<h1>jstl 조건문</h1>
	<h2>3>2크냐</h2>
	<p>result:
	<c:if test="${3>2 }" var="result">
	크다
	</c:if>
	</p>
	<p>${result }</p>
	<h2>3<2크냐</h2>
	<p>result:
	<c:if test="${3<2 }" var="result">
	크다
	</c:if>
	</p>
	<p>${result }</p>
	<h2>3을 2,4와 비교</h2>
	<p>
		<c:if test="${3>4 }">
		4보다 크다
		</c:if>
		<c:if test="${3>2 }">
		2보다 크다
		</c:if>
	</p>
	<h2>3을 2,4와 비교(case)</h2>
	<p>
		<c:choose>
			<c:when test="${param.i>3 }">
				3보다크다
			</c:when>
			<c:when test="${param.i==3 }">
				3이다
			</c:when>
			<c:otherwise>
				3보다 작다
			</c:otherwise>
		</c:choose>
	</p>
</body>
</html>







