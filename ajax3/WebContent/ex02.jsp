<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jquery ajax</h1>
	<p>jquery를 이용한 비동기통신을 진행하겠습니다</p>
	<% if("1234".equals(request.getParameter("sabun"))
			&&"admin".equals(request.getParameter("name"))){%>
	<h2><%=request.getParameter("name") %>님 환영합니다</h2>
	<% }else {%>
	<h2>로그인 실패</h2>
	<%} %>
</body>
</html>




