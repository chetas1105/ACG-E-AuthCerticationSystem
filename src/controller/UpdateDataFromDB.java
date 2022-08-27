package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateDataFromDB {
	public static int valid(String q,String ticketId,String status){
		int i = 0;
	
		
		try {

			Connection conn = DBConnector.getConnection();
		      
			PreparedStatement ps=conn.prepareStatement(q); 
			
			
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		} 
		return i;

	}
}
