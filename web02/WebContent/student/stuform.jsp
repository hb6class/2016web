<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="800" align="center">
		<tr height="80">
			<th width="250">
				<a href="/web02/student/main.jsp">
				<img alt="logo" src="../imgs/logo_ai.png" width="200">
				</a>
			</th>
			<th width="100"><a href="stulist.jsp">��ȸ</a></th>
			<th width="100" bgcolor="red"><a href="stuform.jsp">�л����</a></th>
			<th width="100"><a href="stuadd.jsp">�����Է�</a></th>
			<th width="100"><a href="studel.jsp">�����ͻ���</a></th>
			<th></th>
		</tr>
		<tr>
			<td colspan="6" height="400">
				<center>
				<!-- content start -->
				<h1>�л����</h1>
				<form action="stuinsert.jsp">
				<table>
					<tr>
						<td>�� ��</td>
						<td><input type="text" name="idx"> </td>
					</tr>				
					<tr>
						<td>�� ��</td>
						<td><input type="text" name="name"></td>
					</tr>				
					<tr>
						<td colspan="2">
							<input type="submit" value="�� ��"> 
							<input type="reset" value="�� ��">
						</td>
					</tr>				
				</table>
				</form>
				<!-- content end -->
				</center>
			</td>
		</tr>
	</table>
</body>
</html>