<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력 페이지</h1>
	<form action="insert.do">
	<table>
		<tr>
			<td><label for="sabun">sabun</label></td>
			<td>
			<input type="text" value="${param.sabun }" name="sabun" id="sabun"/>
			<span>${err1 }</span>
			</td>
		</tr>
		<tr>
			<td><label for="name">name</label></td>
			<td>
			<input type="text" value="${param.name }" name="name" id="name"/>
			<span>${err2 }</span>
			</td>
		</tr>
		<tr>
			<td><label for="pay">pay</label></td>
			<td>
			<input type="text" value="${param.pay }" name="pay" id="pay"/>
			<span>${err3 }</span>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit">입 력</button>
				<button type="reset">취 소</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>