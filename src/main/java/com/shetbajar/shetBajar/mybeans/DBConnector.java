package com.shetbajar.shetBajar.mybeans;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	
	private static Connection dbconnection;
	
	private DBConnector()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbconnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb?user=root&password=Manish12");	
		}
		catch(Exception e)
		{
			System.out.println(e);			
		}
	}
	
	public static Connection getConnected()
	{
		return dbconnection;
	}


}
