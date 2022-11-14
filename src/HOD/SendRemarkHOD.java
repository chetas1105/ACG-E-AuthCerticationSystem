package HOD;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.DBConnector;

/**
 * Servlet implementation class SendRemarkHOD
 */
@WebServlet("/SendRemarkHOD")
public class SendRemarkHOD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SendRemarkHOD() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String remarkDetails = request.getParameter("remarkDetails");
		String userId = (String)request.getParameter("ro");
		
		System.out.println(remarkDetails+" "+userId);
		
		String query ="Update allcertificates set remark = ? where RollNumber=?";
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = DBConnector.getConnection();
			PreparedStatement ps=conn.prepareStatement(query);  
			ps.setString(1, remarkDetails);
			ps.setString(2, userId);
			
			ps.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rDispatcher = request.getRequestDispatcher("HODDashBoard.jsp");
		rDispatcher.forward(request, response);
	}

}
