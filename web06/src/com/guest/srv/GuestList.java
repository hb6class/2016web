package com.guest.srv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class GuestList extends HttpServlet {
	Logger log = Logger.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.debug("list start");
		log.info("info-list");
//		System.out.println("GuestList-doGet Call");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>리스트 페이지</h1>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>사번</td>");
		out.println("<td>이름</td>");
		out.println("<td>날짜</td>");
		out.println("<td>금액</td>");
		out.println("</tr>");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from guest");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td><a href=\"detail.naver?idx="
							+rs.getInt("sabun")+"\">"
							+rs.getInt("sabun")+"</a></td>");
				out.println("<td>"+rs.getString("name")+"</td>");
				out.println("<td>"+rs.getDate("nalja")+"</td>");
				out.println("<td>"+rs.getInt("pay")+"</td>");
				out.println("</tr>");
			}
		} catch (Exception e) {
		} finally {
			try{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		out.println("</table>");
		out.println("<p><a href=\"addform.html\">[입 력]</a></p>");
		out.println("</body>");
		out.println("</html>");
		
	}
}












