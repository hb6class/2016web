<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css"/>
<link rel="stylesheet" href="css/layout.css"/>
<style type="text/css">
	.err{
		color: red;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		
		$('form').on('submit',function(){
			$('.err').remove();
			var input=$(':text');
			var result=true;
			input.each(function(i,e) {
				if($(e).val()==""){
					result=false;
					$(e).after('<span class="err">비었음</span>');	
				}
			});
			return result;
		});
		
		/* input.each(function(i,e) {
			alert(i);
		}); */
	});

</script>
	
</head>
<body>
	<div class="container">
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<div class="content row">
		<div>guest &gt; <a href="guestlist.naver">list</a> &gt; add</div>
		<h1>입력페이지</h1>
		<form action="guestInsert.naver">
		<p>
			<label for="sabun">사 번</label>
			<input type="text" name="sabun" id="sabun"/>
		</p>
		<p>
			<label for="name">이 름</label>
			<input type="text" name="name" id="name"/>
		</p>
		<p>
			<label for="pay">금 액</label>
			<input type="text" name="pay" id="pay"/>
		</p>
		<p>
			<button type="submit">입 력</button>
			<button type="reset">취 소</button>
		</p>
		</form>
	</div>
	<jsp:include page="../template/footer.jsp"></jsp:include>
	
	</div>
</body>
</html>








