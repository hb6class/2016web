<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�⺻ ���尴ü</h1>
	<%
	//HttpServletRequest req = request;
	String addr = request.getRemoteAddr();
	out.print("������ �ּ�:"+addr+"<br>");
	out.print("���� ��������:"+request.getProtocol()+"<br>");
	out.print("���� ���ؽ�Ʈ ���:"+request.getContextPath()+"<br>");
	out.print("���������:"+request.getRequestURI()+"<br>");
	out.print("������:"+request.getServerName()+"<br>");
	out.print("���� ��Ʈ:"+request.getServerPort()+"<br>");
	
	%>
</body>
</html>








