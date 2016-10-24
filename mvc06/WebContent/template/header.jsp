<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="header row">
	<div class="grid6">
		<img alt="" src="imgs/logo_ai.png"/>
	</div>
	<div class="grid6">
		<%
		if(session.getAttribute("sabun")!=null){ 
			if((Boolean)session.getAttribute("result")){ 
		%>
		<p><%=session.getAttribute("sabun") %>님 로그인 중</p>
		<%
			}
		}else{ 
		%>
		<form action="login.naver" method="post">
		<label for="sabun">사 번</label>
		<input type="text" name="sabun" id="sabun"/>
		<label for="name">이 름</label>
		<input type="text" name="name" id="name"/>
		
		<button type="submit">로그인</button>
		</form>
		<%} %>
	</div>
</div>


</body>
</html>