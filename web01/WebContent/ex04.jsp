<!-- ���þ� -->
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
	<%! //�����(��) -- �ɹ��ʵ�, �޼ҵ�
	public int sum(int a, int b){
		return a+b;
	}
	public int tot;
	%>
<body>
	<h1>��ũ��Ʈ�� Ư¡</h1>
	<h2>1~10������ ��</h2>
	
	<% // ��ũ��Ʈ�� - main�޼ҵ� ���� ����
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
	<%//ǥ���� %>
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











