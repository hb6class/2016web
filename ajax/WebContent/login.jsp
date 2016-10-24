<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id")!=null){
		response.sendRedirect("result.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="result.jsp">
		<label for="id">id:</label>
		<input type="text" name="id" id="id" />
		<button type="submit">로그인</button>
	</form>
	<h1>ajax-</h1><%=session.getId() %>
		<p>Ajax(Asynchronous JavaScript and XML, 에이잭스)는 
		대화식 웹 애플리케이션의 제작을 위해 
		아래와 같은 조합을 이용하는 웹 개발 기법이다.</p>
		<%session.setMaxInactiveInterval(60); %>
		<%=session.getMaxInactiveInterval() %>
</body>
</html>










