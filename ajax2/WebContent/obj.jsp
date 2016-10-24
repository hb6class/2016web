<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var div;
	var xhr;
	window.onload=function(){
		div=document.querySelector("div");
		xhttp();
	};
	function xhttp(){
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange=parsing;
		xhr.open('get', 'http://127.0.0.1:8080/ajax2/list.json', true);
		xhr.send();
	}
	function parsing(){
		var txt=xhr.responseText;
		var obj=JSON.parse(txt);
		var text="";
		for(var i=0; i<obj.guest.length; i++){
			text+="<div>사번:"+obj.guest[i].sabun+", "
					+"이름:"+obj.guest[i].name+", "
					+"날짜:"+obj.guest[i].nalja+", "
					+"금액:"+obj.guest[i].pay+"</div>";
		}
		div.innerHTML=text;
	}
</script>
</head>
<body>
	<div></div>
</body>
</html>





