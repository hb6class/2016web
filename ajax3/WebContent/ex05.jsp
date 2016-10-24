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
		var url='login.jsp';
		var submit=$('.header button');
		submit.on('click',function(){
			var sabun=$('#sabun').val();
			var name=$('#name').val();
			jQuery.getJSON(url,[{'name': "sabun",'value': sabun},
			                    {'name': "name",'value': name}],
					function(data,textStatus,jqXHR){
				if(data.result)
				$('.header>div').eq(1).html("<h2>"+data.name+"</h2><button id='aa'>aa</button>");
				});
			
			
		});
	});
</script>
</head>
<body>
	<div class="header">
		<div>
			<img alt="" src="imgs/logo_ai.png"/>	
		</div>
		<div>
			<p><label for="sabun">sabun</label>
			<input type="text" name="sabun" id="sabun" /></p>
			<p><label for="name">name</label>
			<input type="text" name="name" id="name"/></p>
			<p><button>login</button></p>
		</div>
	</div>
	<div class="content">
		<h1>ex04페이지 입니다</h1>
		<p>상단의 폼은 비동기 통신입니다</p>
	</div>
</body>
</html>