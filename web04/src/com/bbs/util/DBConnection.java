package com.bbs.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private Connection conn;
	
	public DBConnection() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("DBConnection-15번 라인이 잘못됨");
		} catch (SQLException e) {
			System.out.println("DBConnection-11,12,13,16번 라인이 잘못됨");
		}
		
	}
	
	public Connection getConn(){
		return conn;
	}
	
}
