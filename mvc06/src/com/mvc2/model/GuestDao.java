package com.mvc2.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GuestDao {
	private static String url;
	private static String user;
	private static String password;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GuestDao() throws Exception {
		url="jdbc:oracle:thin:@localhost:1521:xe";
		user="scott";
		password="tiger";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(url, user, password);
	}
	public GuestDao(String driver,String url, String user, String password) throws Exception {
		this.url=url;
		this.user=user;
		this.password=password;
		Class.forName(driver);
		conn=DriverManager.getConnection(this.url, this.user, this.password);
	}

	public List<GuestDto> selectAll(int p,int row) throws SQLException {
		List<GuestDto> list=new ArrayList<GuestDto>();
		int start = (p-1)*row+1;
		int end = start+row-1;
		String sql="select * from "
				+ "(select rownum as rn,A.* "
				+ "from (select * from guest "
				+ "order by sabun desc)A) "
				+ "where rn between "+start+" and "+end;
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				GuestDto dto=new GuestDto(rs.getInt("sabun")
						, rs.getString("name")
						, rs.getDate("nalja")
						, rs.getInt("pay"));
				list.add(dto);
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return list;
	}

	public GuestDto selectOne(int sabun) throws SQLException {
		GuestDto dto=new GuestDto();
		String sql="select * from guest where sabun=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				dto.setSabun(rs.getInt("sabun"));
				dto.setName(rs.getString("name"));
				dto.setNalja(rs.getDate("nalja"));
				dto.setPay(rs.getInt("pay"));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return dto;
	}

	public int insertOne(int sabun, String name, int pay) throws SQLException {
		int cnt=0;
		String sql="insert into guest (sabun,name,nalja,pay) "
				+ "values (?,?,sysdate,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setInt(3, pay);
			cnt=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return cnt;
	}

	public int UpdateOne(GuestDto dto) throws SQLException {
		int result=0;
		String sql="update guest set name=?"
				+ ",nalja=sysdate,pay=? where sabun=?";
		try{
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, dto.getName());
		pstmt.setInt(2, dto.getPay());
		pstmt.setInt(3, dto.getSabun());
		result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		return result;
	}

	public int deleteOne(int sabun) throws SQLException {
		int result=0;
		String sql="delete from guest where sabun=?";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			result=pstmt.executeUpdate();
			}finally{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}
		return result;
	}

	public int getTot() throws SQLException {
		int tot=0;
		String sql="select count(*) as tot from guest";
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				tot=rs.getInt("tot");
			}
		}finally{
			if(pstmt!=null)pstmt.close();
		}
		return tot;
	}
}
