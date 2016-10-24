<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>jsp페이지입니다</h1>
		<%
			int a =100;
			int b =2;
			System.out.println("a콘솔창 출력");
			out.write("a이번엔 페이지에 출력");
			//out.println("페이지 두번째에 출력");
			out.println("페이지 세번째에 출력");
			out.println("<!--html주석2"+a*b);
			out.println("-->");
		%>
		<!--html주석 -->
	</body>
</html>