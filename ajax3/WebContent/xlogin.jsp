<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int sabun=Integer.parseInt(request.getParameter("sabun"));
String name=request.getParameter("name");
boolean result=false;
if(sabun==1234&&"admin".equals(name)){
	result=true;
}
%>
<login>
	<result><%=result %></result>
	<name><%=name %></name>
</login>
