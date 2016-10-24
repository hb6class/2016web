<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sabun=Integer.parseInt(request.getParameter("sabun"));
	String name=request.getParameter("name");
	System.out.println(sabun+":"+name);
	boolean result=false;
	if(sabun==1234&&"admin".equals(name)){
		result=true;
	}
%>
{"result":<%=result %>,"name":"<%=name %>"}