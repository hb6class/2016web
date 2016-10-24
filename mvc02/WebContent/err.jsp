<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
	window.setTimeout(goBack, 3000);
		
</script>
</head>
<body>
	<h1>ERR</h1>
	<p><%=(String)request.getAttribute("msg") %></p>
</body>
</html>