package com.up.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class FileDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public FileDao() throws Exception {
		Context ictxt = new InitialContext();
		DataSource ds = (DataSource)ictxt.lookup("java:comp/env/jdbc/myoracle");
		conn=ds.getConnection();
	}
	
	public List<FileDto> selectAll() throws SQLException{
		List<FileDto> list = new ArrayList<FileDto>();
		pstmt=conn.prepareStatement("select * from fbbs");
		rs=pstmt.executeQuery();
		while (rs.next()) {
			list.add(new FileDto(rs.getInt("sabun")
					, rs.getString("name")
					, rs.getString("orgfilenm")
					, rs.getString("refilenm")));
		}
		pstmt.close();
		conn.close();
		return list;
	}

	public void insertOne(int sabun, String name, String orgfilenm, String refilenm) throws SQLException {
		pstmt=conn.prepareStatement("insert into fbbs (sabun,name,orgfilenm,refilenm) values (?,?,?,?)");
		pstmt.setInt(1, sabun);
		pstmt.setString(2, name);
		pstmt.setString(3, orgfilenm);
		pstmt.setString(4, refilenm);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}
}











