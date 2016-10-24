<%@ page import="com.mvc2.model.GuestDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% GuestDto bean=(GuestDto)request.getAttribute("bean"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css"/>
<link rel="stylesheet" href="css/layout.css"/>
<style type="text/css">
	span{
		background-color: #ccc;
		display: inline-block;
		width: 70%;
		height: 30px;
	}
	.label{
		width: 30%;
		text-align: center;
		font-weight:bold;
		text-align:center;
		background-color: gray;
		color:white;
	}
	p{
		width:70%;
		margin: 5px auto; 
	}
	p:last-child{
		text-align: center;
	}
	p>a{
		text-decoration: none;
		display: inline-block;
		width: 120px;
		height: 50px;
		background:linear-gradient(#999,#aaa,#666);
		border-radius:25px;
		text-align: center;
		line-height: 50px;
		color: white;
		font-weight: bold;
		
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var del=$('.content p>a').eq(1);
		
		del.on("click",function(){
			//var result = window.confirm('사번:<%=bean.getSabun() %>번을\n삭제하시겠습니까?');
			
			var num=$('.content p>span').eq(1).text();
			var result=window.confirm('사번:'+num+'번을\n삭제하시겠습니까?');
			return result;
		});
	});
</script>
</head>
<body>
	<div class="container">
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<div class="content row">
		<div class="grid12">
			<div>guest &gt; <a href="guestlist.naver">list</a> &gt; detail</div>
			<h1>상세페이지</h1>
			<p><span class="label">사 번</span><span><%=bean.getSabun() %></span></p>
			<p><span class="label">이 름</span><span><%=bean.getName() %></span></p>
			<p><span class="label">날 짜</span><span><%=bean.getNalja() %></span></p>
			<p><span class="label">금 액</span><span><%=bean.getPay() %></span></p>
			<p>
				<a href="guestEdit.naver?idx=<%=bean.getSabun() %>">수 정</a>
				<a href="guestDel.naver?idx=<%=bean.getSabun() %>">삭 제</a>
			</p>
		</div>
	</div>
	<jsp:include page="../template/footer.jsp"></jsp:include>
	</div>
</body>
</html>






