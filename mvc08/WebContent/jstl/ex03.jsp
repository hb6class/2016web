<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jstl.model.GuestDto"%>
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
	<h1>반복문</h1>
	<p>
	<%
		String[] st ={"a","ab","abc","abcd"};
		pageContext.setAttribute("arr", st);
	%>
	
	<c:forEach begin="1" end="10" var="i" step="2">
		${i} 
	</c:forEach>
	</p>
	<p>
	<c:forEach items="${pageScope.arr }" var="stArr">
		${stArr } 
	</c:forEach>
	</p>
	<ul>
	<c:forEach items="${arr }" var="lis" begin="2" end="3">
		<li>${lis }</li>	
	</c:forEach>
	</ul>
	<%
		ArrayList list = new ArrayList();
		list.add(new GuestDto(1111,"admin",new Date(),10));
		list.add(new GuestDto(2222,"root",new Date(),20));
		list.add(new GuestDto(3333,"guest",null,30));
		list.add(new GuestDto(4444,null,new Date(),40));
		pageContext.setAttribute("alist", list);
	%>
	<ul>
		<c:forEach var="listItem" items="${alist }">
			<li>${listItem.sabun },
			${listItem.name },
			${listItem.nalja },
			${listItem.pay }</li>
		</c:forEach>
	</ul>
	<c:forEach var="listItem" items="${alist }" varStatus="status">
			<p>카운트:${status.count }
			,idx:${status.index }
			,start:${status.first }			
			,end:${status.last }			
			</p>
		</c:forEach>
	<%	
	HashMap map = new HashMap();
	map.put("a1", "a");
	map.put("a2", "ab");
	map.put("a34", "abced");
	map.put("a321", "asdfadsfsadf");
	pageContext.setAttribute("hmap", map);
	%>
	<c:forEach var="map" items="${hmap }">
		<p>${map.key }:${map.value }</p>
	</c:forEach>
	<%
	String msg="a ab abc abcde dfasf sdfasfd";
	pageContext.setAttribute("msg", msg);
	%>
	<c:forTokens var="msg" items="${msg }" delims=" ">
		<p>${msg }</p>
	</c:forTokens>
</body>
</html>







