package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
public static Connection getConnection() throws ClassNotFoundException, SQLException{
		
		
		String url = "jdbc:mysql://localhost:3306/vmgmc1";
        String userName = "root";
        String password = "Chetas@11";
        
        
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Registered");
        //3.creating connection
        Connection conn = DriverManager.getConnection(url,userName,password);
        System.out.println("Connection !!");
		
		return conn;
		
	}

}
