package com.mvc.model;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

public class StuDaoTest {
	private StuDao dao;
	private Connection conn;
	
	@Before
	public void setting(){
		dao=new StuDao();
		conn=getConnection();
		
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		dao.setConn(conn);
	}

	private Connection getConnection() {
		String url="jdbc:h2:tcp://localhost/~/test";
		String user="sa";
		String password="";
		
		try {
			Class.forName("org.h2.Driver");
	        conn = DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	@Test
	public void connectionTest() {
		assertNotNull(conn);
	}
	
	@Test
	public void insertOneTest(){
		int result=dao.insertOne(new StuDto(1,90,80,70,"aa"));
		assertEquals(1, result);
	}
	
	@Test
	public void selectOneTest(){
		StuDto dto=dao.selectOne(0);
		StuDto dto2=new StuDto(0, 10, 20, 30, "test");
		assertNotNull(dto);
		assertEquals(dto2, dto);// .equals
	}
	@Test
	public void selectAllTest(){
		ArrayList list= dao.selectAll();
		assertSame(1, list.size());// ==
	}
}
