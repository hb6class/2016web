<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	var temp;
	$(document).ready(function() {
		 $.ajax('ex02.html',{
			dataType:'html',
			success:function(data){
				temp=data;
				var st1 = $(data)[2];
				var st2 = $(data)[3];
				$('.content>div').append(st1).append(st2);
			}
		}); 
		/* $.ajax('data.xml',{
			'dataType':'text',
			'success':function(data){
				//alert($(data).find('name').text());
				var data1="<p>sabun:"+$(data).find('sabun').text()+"</p>";
				var data2="<p>name:"+$(data).find('name').text()+"</p>";
				$('.content>div').append(data1).append(data2);
				//$('.content>div').text(data);
			}
		}); */
		/* $.ajax({
			'url':'obj3.json',
			'type':'get',
			'data':{"sabun":2222},
			'dataType':'json',
			'success':function(data){
				var st="<ul>";
				var list = data.guest;
				for(var i=0; i<list.length; i++){
					var obj=list[i];
					st+="<li>"+obj.sabun+","+obj.name+","+obj.nalja+","+obj.pay+"</li>";
				}
				st+="</ul>";
				alert(st);
				$('.content>div').append(st);
			}
		}); */
	});
</script>
</head>
<body>
	<div class="header">
		<img alt="" src="imgs/logo_ai.png">
	</div>
	<div class="menu">
		<a href="#">menu1</a>
		<a href="#">menu2</a>
		<a href="#">menu3</a>
		<a href="#">menu4</a>
	</div>
	<div class="content">
		<div>
		
		</div>
	</div>
	<div class="footer">
	(주)한빛이엔아이｜사업자등록번호 : 220-85-43667｜통신판매신고 : 마포 제 0358호｜TEL : 02-707-1480 | 대표이사 : 염기호
한빛교육센터신촌센터 홈페이지 관리자 : 김도환｜주소 : 121-854 서울시 마포구 신수동 63-14 구프라자 3층
Copyright (c) 2015 한빛교육센터 All rights reserved. Hosting by (주)오마이사이트
	</div>
</body>
</html>