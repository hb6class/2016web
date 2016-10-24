<!-- 지시어 -->
<%@ page import="java.util.Date"  %>
<%@ page import="java.util.Calendar"  %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	<%! //선언부(식) -- 맴버필드, 메소드
	public int sum(int a, int b){
		return a+b;
	}
	public int tot;
	%>
<body>
	<h1>스크립트릿 특징</h1>
	<h2>1~10까지의 합</h2>
	
	<% // 스크립트릿 - main메소드 내부 역할
	int sum =0;
	for(int i=1; i<=50; i++){
		sum+=i;
		out.print(i);
		if(i!=10){
	%>
			+
	<%
			}
	}
	out.print("=");
	%>
	
	<font size="16">
	<%=sum %>
	<%//표현식 %>
	</font>
	<br>
	100+50=<%=sum(100,50) %>
	<br>
	<%
	Date date = new Date();
	out.print(date);
	%>
</body>
</html>











