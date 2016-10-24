<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
	stmt=conn.createStatement();
	rs=stmt.executeQuery("select * from guest");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
	<style type="text/css">
		*{
			margin: 0px;
			padding: 0px;
		}
		#header,#footer{
			background-color: #ccc;
			height: 80px;
		}
		#header>h1{
			text-align: center;
		}
		
		.row{
			border-bottom: red solid 1px;
			height: 50px;
		}
		.row>div{
			display: inline-block;
			width: 25%;
		}
		.row>div:first-child{
			width: 20%;
		}
		a{
			text-decoration: none;
		}
		#footer li{
			display: inline-block;
			width: 22%;
			margin: 0px 2px;
		}
		#footer a{
			display: inline-block;
			background-color:#aaa;
			width:100%;
			height: 80px;
			text-align: center;
			line-height: 80px;
		}
	</style>
</head>
<body>
	<div id="header">
		<h1>app 화면</h1>
	</div>
	<div id="content">
		<div id="table">
			<div class="row">
				<div class="col">사번</div>
				<div class="col">이름</div>
				<div class="col">날짜</div>
				<div class="col">금액</div>
			</div>
			<%while(rs.next()){ %>
			<a href="#?sabun=<%=rs.getInt("sabun") %>">
			<div class="row">
				<div class="col"><%=rs.getInt("sabun") %></div>
				<div class="col"><%=rs.getString("name") %></div>
				<div class="col"><%=rs.getDate("nalja") %></div>
				<div class="col"><%=rs.getInt("pay") %></div>
			</div>
			</a>
			<%
			}
			conn.close();
			%>
		</div>
	
	</div>
	<div id="footer">
		<ul>
			<li><a href="#">HOME</a></li>
			<li><a href="#">menu1</a></li>
			<li><a href="#">menu2</a></li>
			<li><a href="#">BACK</a></li>
		</ul>
	</div>
</body>
</html>








