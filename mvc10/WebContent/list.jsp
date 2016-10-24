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
	<h1>리스트</h1>
	<table>
		<tr>
			<td>사번</td>
			<td>이름</td>
			<td>파일</td>
		</tr>
		<c:forEach items="${alist }" var="bean">
		<tr>
			<td>${bean.sabun }</td>
			<td>${bean.name }</td>
			<td><a target="_blank" href="upload/${bean.refilenm }">${bean.orgfilenm }</a></td>
		</tr>
		</c:forEach>
	</table>
	<p><a href="add.do">입력</a></p>
</body>
</html>