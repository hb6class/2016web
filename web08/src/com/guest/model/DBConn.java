package com.guest.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	private static Connection conn;
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	
	public static Connection getConnection() throws Exception{
		
		if(conn==null || conn.isClosed()){
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		}
		return conn;
	}
}
