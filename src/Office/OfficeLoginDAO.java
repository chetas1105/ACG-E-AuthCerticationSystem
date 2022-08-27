package Office;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import controller.DBConnector;

public class OfficeLoginDAO {
public static boolean validate(String officeUserId, String officePassword) throws ClassNotFoundException, SQLException{
		
		boolean status = false;
		
		Connection con = DBConnector.getConnection();
		
		String query ="select * from office where officeUserId=? and officePassword=?";
		
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, officeUserId);
		ps.setString(2, officePassword);
		
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		return status;
	}

}
