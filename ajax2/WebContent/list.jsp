<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	body>#table{
		width: 100%;
	}
	#table>div{
		border-bottom: 1px solid red;
	}
	#table>div>span{
		display: inline-block;
		width: 25%;
	}
</style>
<script type="text/javascript">
	var div;
	var sel
	window.onload=function(){
		div=document.getElementById("table");
		sel=document.getElementsByTagName("select")[0];
		sel.onclick=function(){
			start();
			
		};
	};
	
	function start(sabun){
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4&&xhr.status==200){
				var list="<div><span>사번</span><span>이름</span><span>날짜</span><span>금액</span></div>";
				var list2="";
				var xml=xhr.responseXML;
				var cnt=xml.getElementsByTagName("row").length;
				for(var i=0; i<cnt; i++){
					var row1=xml.getElementsByTagName("sabun")[i].firstChild.nodeValue;
					var row2=xml.getElementsByTagName("name")[i].firstChild.nodeValue;
					var row3=xml.getElementsByTagName("nalja")[i].firstChild.nodeValue;
					var row4=xml.getElementsByTagName("pay")[i].firstChild.nodeValue;
					list+="<div onclick='start("+row1+")'>"
					        +"<span>"+row1+"</span>"
					        +"<span>"+row2+"</span>"
					        +"<span>"+row3+"</span>"
					        +"<span>"+row4+"</span>"
					       +"</div>";
					       
					 list2+="<option>"+row1+"</option>"
			    }
				div.innerHTML = list;
				sel.innerHTML = list2;
			}
			
		};
		var url='list.xml';
		if(sabun)url+="?sabun="+sabun;
		xhr.open('get', url, true);
		xhr.send();
	}
</script>
</head>
<body>
	<div><img alt="" src="imgs/logo_ai.png"> </div>
	<div>
		<select>
			<option>선택하세요</option>
		</select>
	</div>
	<div id="table"></div>
</body>
</html>



