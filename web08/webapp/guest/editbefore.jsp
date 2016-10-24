<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0" 
			bordercolor="red" width="80%" align="center">
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/header.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td width="200" valign="top">
				<jsp:include page="../frame/menu.jsp"></jsp:include>
			</td>
			<td>
				<!-- content -->
				<jsp:useBean id="bean" class="com.guest.model.GuestBean"></jsp:useBean>
				<jsp:setProperty property="sabun" name="bean"/>
				<jsp:setProperty property="name" name="bean"/>
				<jsp:setProperty property="pay" name="bean"/>
				<%
				com.guest.model.GuestBean bean2 = new com.guest.model.GuestBean();
				bean2.setSabun(Integer.parseInt(request.getParameter("sabun")));
				bean2.setName(request.getParameter("name"));
				bean2.setPay(Integer.parseInt(request.getParameter("pay")));
				%>
				<h1>수정확인페이지</h1>
				<form action="update.jsp">
					<table>
						<tr>
							<td>사번</td>
							<td><jsp:getProperty property="sabun" name="bean"/> 
							<input type="hidden" name="sabun" value="<%=bean.getSabun()%>"> </td>
						</tr>
						<tr>
							<td>이름</td>
							<td><jsp:getProperty property="name" name="bean"/>
							<input type="hidden" name="name" value="<%=bean.getName()%>"> </td>
						</tr>
						<tr>
							<td>금액</td>
							<td><jsp:getProperty property="pay" name="bean"/>
							<input type="hidden" name="pay" value="<%=bean.getPay()%>"> </td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="수 정">
								<input type="reset" value="취 소">
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="../frame/footer.jsp"></jsp:include>
			</td>
		</tr>
	
	
	</table>
</body>
</html>