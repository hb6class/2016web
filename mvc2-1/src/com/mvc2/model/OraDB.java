package com.mvc2.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class OraDB {
	//connection ½Ì±ÛÅæ °ü¸®
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";

	
	public static Connection getConnection() throws Exception {
		if(conn==null||conn.isClosed()){
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, password);
		}
		return conn;
	}
}
