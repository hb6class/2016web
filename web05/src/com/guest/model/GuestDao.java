package com.guest.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.guest.bean.GuestBean;

public class GuestDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	public GuestDao() {
	}
	
	public int deleteOne(int sabun){
		String sql ="delete from guest where sabun=?";
		conn=OraDB.getConnection();
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			result = pstmt.executeUpdate();
		}catch(Exception ex){}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return result;
	}
	
	public int updateOne(GuestBean bean){
		String sql ="update guest set name=?,pay=? where sabun=?";
		conn = OraDB.getConnection();
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setInt(2, bean.getPay());
			pstmt.setInt(3, bean.getSabun());
			result = pstmt.executeUpdate();
		}catch(Exception ex){}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return result;
	}
	
	public GuestBean selectOne(int sabun){
		String sql ="select * from guest where sabun=?";
		GuestBean bean = new GuestBean();
		conn = OraDB.getConnection();
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		}catch(Exception ex){}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		
		return bean;
	}
	
	public int insertOne(String name,int pay){
		String sql ="insert into guest (sabun,name,nalja,pay) ";
		sql+=" values (guest_seq.nextval,?,sysdate,?)";
		
		conn=OraDB.getConnection();
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			result = pstmt.executeUpdate();
		}catch(Exception ex){}finally{
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	public ArrayList<GuestBean> selectAll(){
		String sql="select * from guest";
		ArrayList<GuestBean> list = new ArrayList<GuestBean>();
		conn=OraDB.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				GuestBean bean = new GuestBean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {e.printStackTrace();
				}
		}
		return list;
	}
	
	
}
