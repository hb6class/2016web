<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 힌트</h1>
	<%
	int dan = 2;
	for(int i=1; i<10; i++){
		out.print("<p>");
		out.print(dan+"x"+i+"="+dan*i);		
		out.print("</p>");
	}
	%>
</body>
</html>