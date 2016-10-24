<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL 표현식</title>
</head>
<body>
	<h1>${"ex표현식"}</h1>
	<h1><%="자바표현식" %></h1>
	<table>
	<tr>
		<th>표기</th>
		<th>자바표현식</th>
		<th>ex표현식</th>
	</tr>
	<tr>
		<td>문자열</td>
		<td><%="자바표현식" %></td>
		<td>${"ex표현식"}</td>
	</tr>
	<tr>
		<td>숫자</td>
		<td><%=100%3 %></td>
		<td>${100 mod 3}</td>
	</tr>
	<tr>
		<td>불린형</td>
		<td><%=true %></td>
		<td>${true}</td>
	</tr>
	<tr>
		<% //pageContext.setAttribute("a", 3); %>
		<td>null</td>
		<td></td>
		<td>${a}</td>
	</tr>
	<tr>
		<td>연산</td>
		<td><%=3==2 %></td>
		<td>${3 eq 2}</td>
	</tr>
	<tr>
		<td>연산2</td>
		<td><%=3!=2 %></td>
		<td>${3 ne 2}</td>
	</tr>
	<tr>
		<td>연산3</td>
		<td><%=3<2 %></td>
		<td>${3 lt 2}</td>
	</tr>
	<tr>
		<td>연산4</td>
		<td><%=3>2 %></td>
		<td>${3 gt 2}</td>
	</tr>
	<tr>
		<td>연산5</td>
		<td><%=3>=2 %></td>
		<td>${3 ge 2}</td>
	</tr>
	<tr>
		<td>연산5</td>
		<td><%=3<=2 %></td>
		<td>${3 le 2}</td>
	</tr>
	<tr>
		<td>연산6</td>
		<td><%=1>100?"진실":"거짓" %></td>
		<td>${1>100?"진실":"거짓"}</td>
	</tr>
	
	</table>
	
</body>
</html>











