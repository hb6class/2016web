<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css" />
<style type="text/css">
	
	.msg h3{
		background-color: red;
		text-align: center;
	}
	
</style>
<script type="text/javascript">
 var div;
 var btn;
 var xhr;
 var msgbox;
 window.onload=function(){
	 div=document.getElementsByClassName("login")[0];
	 msgbox=document.getElementsByClassName("msg")[0];
	 msgbox.style.display='none';
	 btn=div.getElementsByTagName("button")[0];
	 btn.onclick=function (){
		 var sabun=document.getElementById("sabun").value;
		 var name=document.getElementById("name").value;
		 //alert("sabun:"+sabun+"\nname:"+name);
		 xhttp(sabun,name);
	 };
 };
 function xhttp(sabun, name){
	 xhr=new XMLHttpRequest();
	 xhr.onreadystatechange=change;
	 var url="result.xml";
	 xhr.open('get', url, true);
	 var parameter="sabun="+sabun+"&name="+name;
	 xhr.setRequestHeader("Content-type"
			 , "application/x-www-form-urlencoded");
	 xhr.send(parameter);
 }
 function msg(){
	 alert("입력을 확인하세요");
 }
 function change(){
	 
	 if(xhr.readyState==4 && xhr.status==200){
		 var xml = xhr.responseXML;
		 var result=xml.getElementsByTagName("result")[0].firstChild.nodeValue;
		 if(Number(result)>0){
			 var name=xml.getElementsByTagName("name")[0].firstChild.nodeValue;
			 msgbox.style.display='none';
			 div.innerHTML="<h2>"+name+"</h2>";
		 }else{
			 msgbox.style.display='block';
		 }
		 
	 }
 }
</script>
</head>
<body>
	<div class="container">
		<div class="msg row">
			<div class="grid12">
				<h3>입력을 확인하세요</h3>
			</div>
		</div>
		<div class="header row">
			<div class="grid6">
				<img alt="" src="imgs/logo_ai.png" />
			</div>
			<div class="grid6 login">
				<label for="sabun">사번</label>
				<input type="text" id="sabun"/>
				<label for="name">이름</label>
				<input type="text" id="name"/>
				<button>로그인</button>
			</div>
		</div>
		<div class="menu row">
			<div class="grid2">&nbsp;</div>
			<div class="grid2">menu1</div>
			<div class="grid2">menu2</div>
			<div class="grid2">menu3</div>
			<div class="grid2">menu4</div>
			<div class="grid2">&nbsp;</div>
		</div>
		<div class="content row">
			<div class="grid12">
				<img alt="" src="imgs/bimg01.jpg" />
			</div>
		</div>
		<div class="footer row">
			<div class="grid12">
			W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy. Copyright 1999-2016 by Refsnes Data. All Rights Reserved.
Powered by W3.CSS.
			</div>
		</div>
	</div>
</body>
</html>






