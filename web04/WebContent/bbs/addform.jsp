<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jsp" %>
	<center>
		<h1>글작성</h1>
		<form action="insert.jsp" method="get">
		<table width="300">
			<tr>
				<td bgcolor="#eee" width="80">제목</td>
				<td><input type="text" name="title" placeholder="제목없음"> </td>
			</tr>		
			<tr>
				<td bgcolor="#eee">글쓴이</td>
				<td><input type="text" name="id"> </td>
			</tr>		
			<tr>
				<td bgcolor="#eee"></td>
				<td><textarea name="content" rows="15" cols="30"></textarea> </td>
			</tr>
			<tr><td colspan="2">
				<input type="submit" value="글쓰기">
				<input type="reset" value="취 소">
			</td></tr>		
		</table>	
		</form>
	</center>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>








