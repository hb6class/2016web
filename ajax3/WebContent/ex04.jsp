<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
	.header{}
	.header>div{
		width: 49%;
		display: inline-block;
	}
	.header>div>img{height: 80px;}
	.content{background-color: blue;}
</style>
<script src="js/jquery-1.11.3.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.header>div>form').submit(function() {
			var url=$(this).attr('action');
			var sabun=$('#sabun').val();
			var name=$('#name').val();
			var target=$('.header>div').eq(1);
			if(sabun!=''&&name!=''){
				var param1='sabun='+sabun+"&name="+name;
				var param2={'sabun':sabun,'name':name};
				//target.load(url,param);
				$.ajax({
					url:url,
					type:'post',
					//post방식에서 안될때만 명시
					//contentType :"application/x-www-form-urlencoded; charset=UTF-8",
					data:param2,
					dataType:'xml',
					error:function(jqXHR,textStatus){
						alert(textStatus+"(code):"+jqXHR.status);
					},
					success:function(data,textStatus,jqXHR){
						//alert($(data).find('result').text());
						if($(data).find('result').text()=='true'){
							target.html("<h2>"+$(data).find('name').text()+"님 환영합니다</h2>");
						}else{
							alert($(data).find('name').text()+"님은 존재하지 않습니다");
						}
						/* if(data.result){
							target.html("<h2>"+data.name+"님 환영합니다</h2>");
						} */
						/* if($($(data)[9]).text()=='로그인 실패'){	
							$('#sabun').val("");
							$('#name').val("");
						}else{
							target.html(data);//text,xml,json						
						} */
					}
				});
				
			}else{
				alert('사번 또는 이름이 비었습니다');
			}
			return false;
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
			<form action="xlogin.jsp" method="post" >
				<p><label for="sabun">sabun</label>
				<input type="text" name="sabun" id="sabun" /></p>
				<p><label for="name">name</label>
				<input type="text" name="name" id="name"/></p>
				<p><button type="submit">login</button></p>
			</form>
		</div>
	</div>
	<div class="content">
		<h1>ex04페이지 입니다</h1>
		<p>상단의 폼은 비동기 통신입니다</p>
	</div>
</body>
</html>








