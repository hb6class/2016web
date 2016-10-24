<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="bean" class="com.guest.model.GuestBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<body>
	<h1>수정페이지</h1>
	<form action="<%=request.getParameter("root") %>/update.jsp" method="post">
	<table>
		<tr>
			<td>사번</td>
			<td><input type="text" name="sabun" value="<%=bean.getSabun() %>" readonly="readonly"> </td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="<%=bean.getName()%>"></td>
		</tr>
		<tr>
			<td>금액</td>
			<td><input type="text" name="pay" value="<%=bean.getPay()%>"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수 정">
				<input type="reset" value="취 소">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>