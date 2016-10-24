<%@ page import="java.util.List" %>
<%@ page import="com.mvc2.model.GuestDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<GuestDto> list=(List<GuestDto>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css"/>
<link rel="stylesheet" href="css/layout.css"/>
<style type="text/css">
	
	.content table{
		margin: 0px auto;
		width: 70%;
	}
	.content table th{
		background-color: gray;
	}
	.content table tr:nth-child(2n-1){
		background-color: #ddd;
	}
	.content table td:nth-child(1){
		width: 20%;
	}
	.content table td:nth-child(2){
		width: 30%;
	}
	.content p{
		margin:20px 0px;
		width:80%;
		text-align: right;
	}
	.content p>#btn{
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
	.content ul{
		list-style: none;
		width: 300px;
		margin: 0px auto;
	}
	.content ul>li{
		float: left;
		margin: 0px 5px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var menu=$('.menu');
		menu.on('mouseover',function(){
			$('.menu2').css('display','block');
		}).on('mouseout',function(){
			$('.menu2').css('display','none');
		});
	});
</script>
</head>
<body>

	<div class="container">
		<jsp:include page="/template/header.jsp"></jsp:include>
		<jsp:include page="/template/menu.jsp"></jsp:include>
		
		<div class="content row">
			<div class="grid12">
				<div>guest &gt; list</div>
				<h1>리스트 페이지</h1>
				<p>
				<select name="row">
					<option value="10">10씩보기</option>
					<option value="25">25씩보기</option>
					<option value="50">50씩보기</option>
				</select>
				</p>
				<table>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>날짜</th>
						<th>금액</th>
					</tr>
					<%for(GuestDto bean:list){ %>
					<tr>
						<td><%=bean.getSabun() %></td>
						<td><a href="guestone.naver?idx=<%=bean.getSabun() %>"><%=bean.getName() %></a></td>
						<td><%=bean.getNalja() %></td>
						<td><%=bean.getPay() %></td>
					</tr>
					<%} %>
				</table>
				<p><ul>
				<%
				int tot=(Integer)request.getAttribute("ptot");
				for(int i=1; i<=tot; i++){
				%>
				<li><a href="guestlist.naver?p=<%=i %>"><%=i %></a></li>
				<%} %>
				</ul>
				</p>
				<p><a href="guestAdd.naver" id="btn">입 력</a></p>
			</div>
		</div>
		<jsp:include page="/template/footer.jsp"></jsp:include>
	</div><!-- container end -->

</body>
</html>









