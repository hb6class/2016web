<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="ex09.jsp" method="get">
	<p>id:<input type="text" name="id"> </p>
	<p>pw:<input type="password" name="pw"> </p>
	<p><textarea rows="5" cols="20" name="con"></textarea> </p>
	<p>취미:
		<input type="checkbox" name="chk1" value="ck1">야구
		<input type="checkbox" name="chk1" value="ck2">농구
		<input type="checkbox" name="chk1" value="ck3">배구
	</p>
	<p>지금수업:
		<input type="radio" name="lec" value="java">java
		<input type="radio" name="lec" value="web">web
		<input type="radio" name="lec" value="spring">spring
		
	</p>
	<p>
		<select name="sel" multiple="multiple" >
			<option value="sel1">select1</option>
			<option value="sel2">select2</option>
			<option value="sel3">select3</option>
			<option value="sel4">select4</option>
		</select>
	</p>
	<p><input type="submit" value="전송"> </p>
	</form>
</body>
</html>








