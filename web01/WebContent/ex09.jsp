<%@page import="java.net.URLDecoder"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>전달받은 내용</h1>
	<h2>id:<%=URLDecoder.decode(request.getParameter("id"),"ISO-8859-1") %></h2>
	<h2>pw:<%=request.getParameter("pw") %></h2>
	<h2>content:<%=request.getParameter("con") %></h2>
	<h2>현재수업:<%=request.getParameter("lec") %></h2>
	<h2>선택은:<%=request.getParameter("sel") %></h2>
	<h2>취미:<%
	String[] sts =request.getParameterValues("chk1");
	for(int i=0; i<sts.length; i++){
		out.print(sts[i]+" ");
	}
	//Map map = request.getParameterMap();
	//String[] val1 = (String[])map.get("chk1");
	//for(int i=0; i<val1.length; i++){
	//	System.out.println(val1[i]);
	//}
	//Enumeration em= request.getParameterNames();
	//while(em.hasMoreElements()){
	//	String param = (String)em.nextElement();
	//	System.out.print(param+":");
	//	System.out.println(request.getParameter(param));
	//}
	%></h2>
</body>
</html>









