<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>전달받은 내용</h1>
	<h2>id:<%=request.getParameter("id") %></h2>
	<h2>pw:<%=request.getParameter("pw") %></h2>
	<h2>name:<%=request.getParameter("name") %></h2>
</body>
</html>