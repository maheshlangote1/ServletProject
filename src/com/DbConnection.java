package com;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbConnection {
	public static Connection conn = null;

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		try{
		Class.forName("org.mariadb.jdbc.Driver"); 
         System.out.println("Connecting to a selected database...");
         conn  = DriverManager.getConnection("jdbc:mariadb://localhost:3306/Eduction","root", "root");
         System.out.println("Connected database successfully...");
         System.out.println(conn);
		}catch(Exception e){
			System.out.print(e);
		}
		return conn;

	}

}
