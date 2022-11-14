package Office;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class AcceptApplicationOffice
 */
@WebServlet("/AcceptApplicationOffice")
public class AcceptApplicationOffice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AcceptApplicationOffice() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getParameter("bt");
//		System.out.println(id);
		String query = "Update allcertificates set ApplicationStatus = ? where RollNumber=?";
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = DBConnector.getConnection();
			PreparedStatement ps=conn.prepareStatement(query);  
			ps.setInt(1, 2);
			ps.setString(2, id);
			
			ps.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 RequestDispatcher requestDispatcher=request.getRequestDispatcher("OfficeDashBoard.jsp");
		 requestDispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
