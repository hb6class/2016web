package com.mvc2.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class OraDB {
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String user="scott";
	private static String password="tiger";
	
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		if(conn==null||conn.isClosed())conn=DriverManager.getConnection(url, user, password);
		return conn;
	}
}
