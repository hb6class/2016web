<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>수정페이지</h1>
	<form action="update.jsp">
	<table>
		<tr>
			<td>사번</td>
			<td>
				<input type="text" name="sabun" readonly="readonly" 
				value="<%=request.getParameter("idx")%>">
			</td>
		</tr>	
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" 
				value="<%=request.getParameter("name")%>">
			</td>
		</tr>	
		<tr>
			<td>금액</td>
			<td>
				<input type="text" name="pay" 
				value="<%=request.getParameter("pay")%>">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수 정">
				<input type="reset" value="취 소">
			</td>
		</tr>	
	</table>
	</form>
</body>
</html>







