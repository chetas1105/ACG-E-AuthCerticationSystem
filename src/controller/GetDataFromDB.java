package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetDataFromDB {
public static ResultSet validate(String q){  
		
		ResultSet rs=null;
		
		try{  

		Connection conn = DBConnector.getConnection();
		      
		PreparedStatement ps=conn.prepareStatement(q);  
		
		rs=ps.executeQuery();  
		        
		}catch(Exception e){
			System.out.println(e);
			
		}  
		return rs;  
		} 

}
