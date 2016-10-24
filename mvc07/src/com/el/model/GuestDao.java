package com.el.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GuestDao {
	private String url="jdbc:oracle:thin:@localhost:1521:xe";
	private String user="scott";
	private String password="tiger";
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GuestDao() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(url, user, password);
	}

	public ArrayList selectAll() throws SQLException {
		ArrayList<GuestDto> list= new ArrayList<GuestDto>();
		pstmt=conn.prepareStatement("select * from guest");
		rs=pstmt.executeQuery();
		while(rs.next()){
			list.add(new GuestDto(rs.getInt("sabun")
					,rs.getString("name"),rs.getDate("nalja")
					,rs.getInt("pay")));
		}
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
		return list;
	}
	
}
