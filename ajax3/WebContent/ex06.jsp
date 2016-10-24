<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.11.3.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('button').click(function() {
		$('p').load('txt/ex02.txt','id=a');
	});
}).ajaxStop(function() {
	  console.log( "ajax끝" );
}).ajaxSuccess(function() {
	  console.log( "ajax성공" );
}).ajaxComplete(function() {
	  console.log( "ajax실행완료" );
}).ajaxSend(function() {
	  console.log( "ajax전달" );
}).ajaxStart(function() {
	  console.log( "ajax구동준비끝" );
});
</script>
</head>
<body>
	<button>run</button>
	<p></p>
</body>
</html>