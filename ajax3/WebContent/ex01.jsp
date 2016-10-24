<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('form').on('submit',function(){
			var sabun=$('#sabun').val();
			var name=$('#name').val();
			//1.
			//var url="ex02.jsp?sabun="+sabun+"&name="+name;
			//2.
			//var param={'sabun':sabun,'name':name};
			//var url="ex02.jsp?"+$.param(param);
			//2-2.
			$('.content>div').load($(this).attr("action")
					,$.param({'sabun':sabun,'name':name}));
			//3.
			//$('.content>div').load($(this).attr("action")
			//		,$(this).serialize());
			return false;
		});
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
		<div id="con1">
		<form action="ex02.jsp">
			<p>
				<label for="sabun">sabun</label>
				<input type="text" name="sabun" id="sabun"/>
			</p>
			<p>
				<label for="name">name</label>
				<input type="text" name="name" id="name"/>
			</p>	
			<p>
				<input type="submit" value="전송"/>
				<input type="reset" value="취소"/>
			</p>
		</form>
		</div>
	</div>
	<div class="footer">
	(주)한빛이엔아이｜사업자등록번호 : 220-85-43667｜통신판매신고 : 마포 제 0358호｜TEL : 02-707-1480 | 대표이사 : 염기호
한빛교육센터신촌센터 홈페이지 관리자 : 김도환｜주소 : 121-854 서울시 마포구 신수동 63-14 구프라자 3층
Copyright (c) 2015 한빛교육센터 All rights reserved. Hosting by (주)오마이사이트
	</div>
</body>
</html>








