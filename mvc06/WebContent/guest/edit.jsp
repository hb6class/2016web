<%@ page import="com.mvc2.model.GuestDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	GuestDto bean = (GuestDto)request.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/grid.css"/>
<link rel="stylesheet" href="css/layout.css"/>
<style type="text/css"></style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="../template/header.jsp"></jsp:include>
		<jsp:include page="../template/menu.jsp"></jsp:include>
		<div class="content row">
			<div class="grid12">
				<div>guest &gt; <a href="guestlist.naver">list</a> &gt; <a href="guestone.naver?idx=<%=request.getParameter("idx")%>">detail</a> &gt; edit</div>
				<h1>수정 페이지</h1>
				<form action="guestUpdate.naver">
				<input type="hidden" name="idx" value="<%=bean.getSabun() %>">
				<p>
				<label for="sabun">사 번</label><input type="text" value="<%=bean.getSabun() %>" name="sabun" id="sabun" readonly="readonly"/>
				</p>
				<p>
				<label for="name">이 름</label><input type="text" value="<%=bean.getName() %>" name="name" id="name"/>
				</p>
				<p>
				<label for="pay">금 액</label><input type="text" value="<%=bean.getPay() %>" name="pay" id="pay"/>
				</p>
				<p>
					<button type="submit">수 정</button>
					<button type="reset">취 소</button>
				</p>
				</form>
			</div>
		</div>
		<jsp:include page="../template/footer.jsp"></jsp:include>
	</div>
</body>
</html>






