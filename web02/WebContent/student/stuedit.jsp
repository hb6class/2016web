<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	String sql = "update student3 set kor="
					+kor+",eng="+eng+",math="+math
			+" where idx="+idx;
	System.out.println(sql);
	//정상입력 list page
	//실패시 stuadd page
	%>
</body>
</html>








