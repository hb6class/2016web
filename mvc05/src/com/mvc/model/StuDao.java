package com.mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StuDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public StuDao() {
	}
	
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
	public int insertOne(StuDto dto){
		int result=0;
		String sql="insert into student "
				+ "(num,name,kor,eng,math) "
				+ "values (?,?,?,?,?)";
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getKor());
			pstmt.setInt(4, dto.getEng());
			pstmt.setInt(5, dto.getMath());
			result = pstmt.executeUpdate();
		}catch(Exception e){
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){}
		}
		
		return result;
	}
	
	public ArrayList selectAll(){
		ArrayList list = new ArrayList();
		String sql="select * from student";
		//db
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				StuDto dto = new StuDto(rs.getInt("num")
						, rs.getInt("kor")
						, rs.getInt("eng")
						, rs.getInt("math")
						, rs.getString("name"));
				list.add(dto);
			}
		}catch(Exception e){
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){}
		}
		return list;
	}
	public StuDto selectOne(int num){
		StuDto dto = new StuDto();
		String sql="select * from student where num=?";
		//db
		try{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()){
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMath(rs.getInt("math"));
			}
		}catch(Exception e){
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex){}
		}
		return dto;
	}
}
