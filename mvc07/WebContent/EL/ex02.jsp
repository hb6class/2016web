<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.el.model.JavaBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el:${msg[0] }</h1>
	<h1>el:${msg[1] }</h1>
	<% String[] msgs=(String[])request.getAttribute("msg");%>
	<h1>java:<%=msgs[0] %></h1>
	<h1>java:<%=msgs[1] %></h1>
	<hr/>
	<% ArrayList<Integer> list= (ArrayList<Integer>)request.getAttribute("alist"); %>
	<h2>java:<%=list.get(0) %></h2>
	<h2>java:<%=list.get(1) %></h2>
	<h2>java:<%=list.get(2) %></h2>
	<h2>el:${alist[0] }</h2>
	<h2>el:${alist[1] }</h2>
	<h2>el:${alist[2] }</h2>
	<hr/>
	<% HashMap<String,Integer> map= (HashMap<String,Integer>)request.getAttribute("hmap"); %>
	<h3>java:<%=map.get("abc") %></h3>
	<h3>java:<%=map.get("def") %></h3>
	<h3>java:<%=map.get("g") %></h3>
	<h3>el:${hmap.abc }</h3>
	<h3>el:${hmap.def }</h3>
	<h3>el:${hmap.g }</h3>
	<hr/>
	<% JavaBean bean=(JavaBean)request.getAttribute("dto"); %>
	<h1>java:<%=bean.getSabun() %></h1>
	<h1>java:<%=bean.getName() %></h1>
	<h1>java:<%=bean.getNalja() %></h1>
	<h1>java:<%=bean.isResult() %></h1>
	<h1>el:${dto.sabun }</h1>
	<h1>el:${dto.name }</h1>
	<h1>el:${dto.nalja }</h1>
	<h1>el:${dto.result }</h1>
	<hr/>
	<% String lgn=(String)session.getAttribute("msg"); %>
	<h2>java:<%=lgn %></h2>
	<h2>el:${requestScope.login}</h2>
	<h2>el:${sessionScope.login}</h2>
	<hr/>
	<h3>java:<%=request.getParameter("idx") %></h3>
	<h3>el:${param.idx }</h3>
</body>
</html>








