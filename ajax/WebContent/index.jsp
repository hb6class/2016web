<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var btn;
	var div;
	var id;
	var tmp;
	window.onload=function(){
		btn=document.getElementsByTagName("button")[0];
		div=document.getElementsByClassName("login")[0];
		btn.onclick=function(){
			id=document.getElementById("id").value;
			re();
		};
		var login=<%
		if(session.getAttribute("id")!=null){
			out.print("true");
			}else{
			out.print("false");
			}
		%>;
		if(login)re();
		
	};
	
	function re(){
		var url='http://localhost:8080/ajax/result.jsp?id='+id;
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			/* 
			readyState	Holds the status of the XMLHttpRequest. Changes from 0 to 4: 
				0: request not initialized 
				1: server connection established
				2: request received 
				3: processing request 
				4: request finished and response is ready 
				
			status	
				Returns the status-number 
				(e.g. "404" for "Not Found" or "200" for "OK")
				
			*/
			if(xhr.readyState==4 && xhr.status==200){
				div.innerHTML=xhr.responseText;
			}
		};
		xhr.open('get',url,true);
		xhr.send(null);
	}

</script>
</head>
<body>
	<div class="login">
		<h2>ë¡ê·¸ì¸íì´ì§</h2>
		<label for="id">id:</label>
		<input type="text" name="id" id="id" />
		<button>ë¡ê·¸ì¸</button>
	</div>
	<div class="content">
		<h1>ajax</h1>
		<p>Ajax(Asynchronous JavaScript and XML, ìì´ì­ì¤)ë 
		ëíì ì¹ ì íë¦¬ì¼ì´ìì ì ìì ìí´ 
		ìëì ê°ì ì¡°í©ì ì´ì©íë ì¹ ê°ë° ê¸°ë²ì´ë¤.</p>
	</div>
</body>
</html>