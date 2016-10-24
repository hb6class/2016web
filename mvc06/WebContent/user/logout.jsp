<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css"/>
<link rel="stylesheet" href="css/layout.css"/>
<style type="text/css">
	.content{
		height: 200px;
		padding: 100px 0px;
	}
	.content>*{
		text-align: center;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
	function goback() {
		window.history.back();
	}
	$(document).ready(function() {
		window.setTimeout('goback()', 5000);	
	});
	
</script>
</head>
<body>
	<div class="container">
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<div class="content row">
		<div class="grid12">
		<h1><%=request.getAttribute("user") %>님 로그아웃 하셨습니다</h1>
		</div>
	</div>
	<jsp:include page="../template/footer.jsp"></jsp:include>
	</div>
</body>
</html>




