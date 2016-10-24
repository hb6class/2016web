<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	var cnt=1;
	$(document).ready(function() {
		$('#btn').click(function() {
			cnt++;
			$('#fup').append('<input type="file" name="file'
					+cnt+'" id="file1"><br/>');
		});
	});

</script>
</head>
<body>
	<h1>파일 업로드</h1>
	<form action="upload.do" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td><label for="sabun">사번:</label> </td>
			<td><input type="text" name="sabun" id="sabun"/> </td>
		</tr>
		<tr>
			<td><label for="name">이름</label> </td>
			<td><input type="text" name="name" id="name"> </td>
		</tr>
		<tr>
			<td><label for="file1">업로드</label> </td>
			<td>
				<div id="fup">
				<input type="button" id="btn" value="업로드증가"/><br/>
				<input type="file" name="file1" id="file1"><br/>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit">전 송</button>
				<button type="reset">취 소</button>
			</td>
		</tr>
		
	</table>	
	</form>
</body>
</html>







