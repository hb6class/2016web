<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>페이지 이동</h1>
	<%
	
	//response.sendRedirect("http://naver.com");//절대경로
	response.sendRedirect(request.getContextPath()
			+"/ex04.jsp");//절대경로
	//response.sendRedirect("ex01.jsp");//상대경로
	//PrintWriter prn = response.getWriter();
	//prn.println("출력합니다");
	%>
</body>
</html>













