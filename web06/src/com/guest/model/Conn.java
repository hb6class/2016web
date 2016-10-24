package com.guest.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	private static Connection conn;
	private final static String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private final static String user="scott";
	private final static String password="tiger";
	private final static String driver="oracle.jdbc.driver.OracleDriver";
	
	public static Connection getConn() {
		
		if(conn==null){
			try {
				Class.forName(driver);
				conn=DriverManager.getConnection(url, user, password);
			} catch (Exception e) {
				System.out.println("err:Conn");
			}
		}else{ 
			try{
				if(conn.isClosed()){
					try {
						Class.forName(driver);
						conn=DriverManager.getConnection(url, user, password);
					} catch (Exception e) {
						System.out.println("err:Conn");
					}
				}
			}catch(Exception e){}
		}
		
		return conn;
	}
}
