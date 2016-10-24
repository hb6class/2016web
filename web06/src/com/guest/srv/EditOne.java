package com.guest.srv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guest.model.Conn;
import com.guest.model.GuestBean;

public class EditOne extends HttpServlet{
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		GuestBean bean = new GuestBean();
		String idx=req.getParameter("idx").trim();
		String sql="select * from guest where sabun="+idx;
		conn = Conn.getConn();
		try {
			stmt = conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getTimestamp("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e1){}
		}
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>����������</h1>");
		out.println("<form action=\"update.naver\">");
		out.println("<input type=\"hidden\" name=\"sabun\" value=\""
							+bean.getSabun()+"\">");
		out.println("<table>");
		out.println("<tr>");
		out.println("	<td>�̸�</td>");
		out.println("	<td><input type=\"text\" name=\"name\" value=\""
							+bean.getName()+"\"></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("	<td>�ݾ�</td>");
		out.println("	<td><input type=\"text\" name=\"pay\" value=\""
							+bean.getPay()+"\"></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("	<td colspan=\"2\"><input type=\"submit\" value=\"�� ��\"> "
						+"<input type=\"reset\" value=\"�� ��\"></td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
	}
}
