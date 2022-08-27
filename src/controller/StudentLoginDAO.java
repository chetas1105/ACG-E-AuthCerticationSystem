package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentLoginDAO {
	
public static boolean validate(String userId, String password) throws ClassNotFoundException, SQLException{
		
		boolean status = false;
		
		Connection con = DBConnector.getConnection();
		
		String query ="select * from student where userId=? and studentPassword=?";
		
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, userId);
		ps.setString(2, password);
		
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		return status;
	}

}
