package com.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc2.util.OraDB;

public class UserDao {
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public UserDao() {
	}
	public int login(int sabun, String name) throws SQLException, Exception {
		int result=0;
		String sql="select count(*) as cnt"
				+ " from guest where sabun=? and name=?";
		try{
			conn=OraDB.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result=rs.getInt("cnt");
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}
}
