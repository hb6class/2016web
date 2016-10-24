<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private final String url="jdbc:oracle:thin:@localhost:1521:xe";
	private final String user="scott";
	private final String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<%
	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	
	String sql = "select count(*) as cnt from guest";
			sql+=" where sabun=? and name=?";
	int result=0;	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, password);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(sabun));
		pstmt.setString(2, name);
		rs=pstmt.executeQuery();
		if(rs.next()){
			result = rs.getInt("cnt");
			System.out.println("cnt:"+result);
		}
	}finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(result>0){
	%>
	<h1><%=name %>님 환영합니다</h1>
	<%
	}else{
	%>
	<h1>로그인 실패</h1>
	<script type="text/javascript">
	function back(){
		window.history.back();
	}
	window.setTimeout("back()", 3000);
	</script>
	<%
	}
	%>
</body>
</html>





