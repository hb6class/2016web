<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jsp" %>
	<center>
	<h1>수정페이지</h1>
	<form action="update.jsp">
		<input type="hidden" name="rnum" value="<%=request.getParameter("idx")%>">
	<table>
		<tr>
			<td bgcolor="#eee">제목</td>
			<td><input type="text" name="title" value="<%=request.getParameter("title")%>"> </td>
		</tr>
		<tr>
			<td bgcolor="#eee">내용</td>
			<td>
				<textarea rows="15" cols="30" name="content">
					<%=request.getParameter("content")%>
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수 정">
				<input type="reset" value="취 소">
			</td>
		</tr>
	</table>
	</form>
	</center>
	<%@ include file="../template/footer.jsp" %>
</body>
</html>