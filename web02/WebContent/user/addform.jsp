<!-- addform.jsp -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>user 입력페이지</h1>
	<form action="insert.jsp">
		<p>id:<input type="text" name="id"> </p>
		<p>pw:<input type="password" name="pw"> </p>
		<p>name: <input type="text" name="name"> </p>
		<p><input type="submit" value="SEND">
			<input type="reset" value="RESET">
		 </p>
	</form>
</body>
</html>





