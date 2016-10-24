<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	<%!
		private final String driver ="oracle.jdbc.driver.OracleDriver";
		private final String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		private final String user="scott";
		private final String password="tiger";
		private Connection conn;
		private Statement stmt;
		private ResultSet rs;
		private int cnt;
	%>
<body>
	<%
	int sabun = 0;	
		try{
		sabun = Integer.parseInt(request.getParameter("sabun"));
		}catch(Exception ex){
			response.sendRedirect("./");
		}
		String name = request.getParameter("name");
		char[] temps = name.toCharArray();
		boolean result=false;
		for(int i=0; i<temps.length; i++){
			if((int)temps[i]==(int)'\'')result=true;
		}
		
		System.out.println(sabun+":"+name);
		String sql = "select count(*) as cnt from guest where sabun=";
		sql+=sabun+" and name='"+name+"'";
		System.out.println(sql);
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				cnt = rs.getInt("cnt");
			}
		}catch(Exception ex){
			System.out.println("오류확인");
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		if(result){
			response.sendRedirect("./");
		}else if(cnt>0){
			response.sendRedirect("./guest/list.jsp");
		}else{
	%>
	<h1>로그인 실패</h1>
	<h3><a href="./">로그인 페이지로 이동</a></h3>
	<%	} %>
</body>
</html>










