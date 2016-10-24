package com.mvc2.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.model.GuestDto;

@WebServlet("/insert")
public class InsertController extends HttpServlet {
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="scott";
	private String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int result=0;
		String param1 = req.getParameter("sabun").trim();
		String param2 = req.getParameter("name").trim();
		String param3 = req.getParameter("pay").trim();
		
		if(param1!=null&&param2!=null&&param3!=null
				&&!("".equals(param1))&&!("".equals(param1))
				&&!("".equals(param1))){
			//success
			int sabun=Integer.parseInt(param1);
			String name=param2;
			int pay=Integer.parseInt(param3);
			String sql="INSERT INTO GUEST (SABUN,NAME,NALJA,PAY) VALUES (?,?,SYSDATE,?)";
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn=DriverManager.getConnection(url, user, password);
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, sabun);
				pstmt.setString(2, name);
				pstmt.setInt(3, pay);
				result=pstmt.executeUpdate();
			}catch(Exception e){System.out.println(e.toString());
			}finally{
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (Exception e2) {}
			}
			if(result>0){
				resp.sendRedirect(req.getContextPath());
			}else{
				//resp.getWriter().print("<h1>입력실패</h1>");
				req.setAttribute("msg", "db입력실패");
				req.getRequestDispatcher("err.jsp").forward(req, resp);
			}
		}else{
			// err
			//resp.getWriter().print("<h1>err</h1>");
			req.setAttribute("msg", "입력값 확인");
			req.getRequestDispatcher("err.jsp").forward(req, resp);
		}
		
	}
}










