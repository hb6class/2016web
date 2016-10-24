<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
	width: 300px;
	height: 200px;
	}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<c:import var="w" url="http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108"></c:import>
	<div>${w }</div>
	<span></span>
</body>
</html>