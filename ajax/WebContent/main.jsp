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
	var url="data.xml";
	window.onload=function(){
		div=document.getElementsByTagName("div")[0];
		xreq();
	};
	
	function xreq(){
		alert("start");
		xhr=new XMLHttpRequest();
		xhr.onreadystatechange=func;
		xhr.open('get', url, true);
		xhr.send(null);
	}
	function func(){
		if(xhr.readyState==4&&xhr.status==200){
			var le =xhr.responseXML.getElementsByTagName("student").length;
			var str="";
			var result1;
			var result2;
			for(var a=0; a<le; a++){
			result1=xhr.responseXML.getElementsByTagName("no")[a].firstChild.nodeValue;
			result2=xhr.responseXML.getElementsByTagName("name")[a].firstChild.nodeValue;
				str+=result1+":"+result2+"<br/>";
			}
			div.innerHTML=str;
		}
	}
</script>
</head>
<body>
	<div>loading...</div>
</body>
</html>