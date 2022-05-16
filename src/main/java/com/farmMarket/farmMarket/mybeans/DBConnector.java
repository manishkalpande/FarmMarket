package com.farmMarket.farmMarket.mybeans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	
	
//	public static Connection getConnected()
//	{
//		Connection con=null;
//				
//		try
//		{
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=Manish12");
//			
//		}
//		catch(Exception e)
//		{
//			
//		}
//		return con;
//	}
	
	private static Connection dbconnection;
	
	private DBConnector()
	{
		
	}

	public static Connection getConnected()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=garry74");	
		}
		catch(Exception e)
		{
			System.out.println(e);			
		}
		
		return dbconnection;
	}


}
