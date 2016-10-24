<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0" 
			bordercolor="red" width="80%" align="center">
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/header.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td width="200" valign="top">
				<jsp:include page="../frame/menu.jsp"></jsp:include>
			</td>
			<td>
				<!-- content -->
				<h1>입력페이지</h1>
				<form action="insert.jsp">
					<table>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"> </td>
						</tr>
						<tr>
							<td>금액</td>
							<td><input type="text" name="pay"> </td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="입 력">
								<input type="reset" value="취 소">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/footer.jsp"></jsp:include>
			</td>
		</tr>
	
	
	</table>
</body>
</html>