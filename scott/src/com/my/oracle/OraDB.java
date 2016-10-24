package com.my.oracle;

import java.sql.Connection;
import java.sql.DriverManager;

public class OraDB {

	private static Connection conn;
	private static final String DRIVER="oracle.jdbc.driver.OracleDriver";
	private static final String URL="jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER="scott";
	private static final String PASSWORD="tiger";
	
	public static Connection getConnection() throws Exception {
		if(conn==null || conn.isClosed()){
			Class.forName(DRIVER);
			conn=DriverManager.getConnection(URL, USER, PASSWORD);
		}
		return conn;
	}
}







