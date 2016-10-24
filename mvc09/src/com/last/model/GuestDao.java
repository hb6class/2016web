package com.last.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GuestDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GuestDao() throws Exception {
//		Class.forName(driver);
//		conn=DriverManager.getConnection(url, user, password)
		Context ctxt = new InitialContext();
//		DataSource source=(DataSource)ctxt.lookup("java:comp/env/jdbc/myoracle");
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
	}

	public List<GuestDto> selectAll() throws SQLException {
		String sql="select * from guest";
		List<GuestDto> list=null;
		list = new ArrayList<GuestDto>();
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				list.add(new GuestDto(rs.getInt("sabun")
						,rs.getString("name")
						,rs.getDate("nalja")
						,rs.getInt("pay")));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}
	
	
}
