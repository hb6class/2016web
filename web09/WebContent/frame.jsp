<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String fnm = request.getParameter("fnm");
	String include=null;
	if("list".equals(fnm))include="content/list.jsp";
	else if("detail".equals(fnm))include="content/detail.jsp";
	else if("edit".equals(fnm))include="content/edit.jsp";
	else if("add".equals(fnm))include="content/add.jsp";
	else include="content/main.jsp";
	String root=application.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="95%" align="center">
		<tr>
			<td colspan="2">
				<img alt="logo" src="imgs/logo_ai.png" height="90">
			</td>
		</tr>
		<tr height="250" valign="top">
			<td width="150" >
			===menu===
				<ul>
					<li><a href="./frame.jsp">HOME</a></li>
					<li><a href="./frame.jsp?fnm=list">리스트</a></li>
					<li><a href="./frame.jsp?fnm=add">입  력</a></li>
				</ul>
			</td>
			<td>
				<!-- content start -->
				<jsp:include page="<%=include %>">
					<jsp:param value="<%=root %>" name="root"/>
				</jsp:include>
				<!-- content end -->
			</td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="#eeeeee">
			(주)한빛이엔아이｜사업자등록번호 : 220-85-43667｜통신판매신고 : 마포 제 0358호｜TEL : 02-707-1480 | 대표이사 : 염기호
			<br>한빛교육센터신촌센터 홈페이지 관리자 : 김도환｜주소 : 121-854 서울시 마포구 신수동 63-14 구프라자 3층
			<br>한빛교육센터강남센터 : 서울특별시 강남구 테헤란로 5길 11 유빌딩 3층
			<br>Copyright (c) 2015 한빛교육센터 All rights reserved. Hosting by (주)오마이사이트
			</td>
		</tr>
	</table>
</body>
</html>