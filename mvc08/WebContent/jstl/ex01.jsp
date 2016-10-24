<%@ page import="com.jstl.model.GuestDto" %>
<%@ page import="java.util.Date" %>
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
	<h1>jstl core 태그</h1>
	<ul>
		<li><%="java" %></li>
		<li>${"EL" }</li>
		<li><c:out value="jstl"></c:out></li>
		<li><c:out value="${null }">jstl2</c:out></li>
	</ul>
	<ul>
		<% int a=1000; %>
		<li><%=a %></li>
		<c:set value="100" var="b" scope="page"></c:set>
		<li>${pageScope.b }</li>
		<li><%=(String)pageContext.getAttribute("b") %>
		<c:set value="200" var="b" scope="request"></c:set>
		<li>${requestScope.b }</li>
		<li><%=(String)request.getAttribute("b") %></li>
		<c:set var="d">500</c:set>
		<li>${d }</li>
	</ul>
	<% 
		GuestDto dto = new GuestDto();
		dto.setSabun(1111);
		dto.setName("admin");
		dto.setNalja(new Date());
		dto.setPay(1000);
		pageContext.setAttribute("bean1", dto);
	%>
	<ul>
		<li>${bean1.sabun}</li>
		<li>${bean1.name}</li>
		<li>${bean1.nalja }</li>
		<li>${bean1.pay }</li>
	</ul>
	<c:set target="${bean1 }" property="sabun" value="2222"></c:set>
	<c:set target="${bean1 }" property="name" value="root"></c:set>
	<ul>
		<li>${bean1.sabun}</li>
		<li>${bean1.name}</li>
		<li>${bean1.nalja }</li>
		<li>${bean1.pay }</li>
	</ul>
	<c:set value="${bean1 }" var="bean2"></c:set>
	<c:set target="${bean2 }" property="name" value="guest"/>
	<c:remove var="bean2"/>
	<ul>
		<li>${bean2.sabun}</li>
		<li>${bean2.name}</li>
		<li>${bean2.nalja }</li>
		<li>${bean2.pay }</li>
	</ul>
	
</body>
</html>








