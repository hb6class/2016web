<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>기본 내장객체</h1>
	<%
	//HttpServletRequest req = request;
	String addr = request.getRemoteAddr();
	out.print("접근자 주소:"+addr+"<br>");
	out.print("서버 프로토콜:"+request.getProtocol()+"<br>");
	out.print("서버 컨텍스트 경로:"+request.getContextPath()+"<br>");
	out.print("페이지경로:"+request.getRequestURI()+"<br>");
	out.print("서버명:"+request.getServerName()+"<br>");
	out.print("서버 포트:"+request.getServerPort()+"<br>");
	
	%>
</body>
</html>









