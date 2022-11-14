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

@WebServlet("/AcceptApplicationHOD")
public class AcceptApplicationHOD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AcceptApplicationHOD() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getParameter("bt");
//		System.out.println(id);
		String query = "Update allcertificates set ApplicationStatus = ? where RollNumber=?";
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = DBConnector.getConnection();
			PreparedStatement ps=conn.prepareStatement(query);  
			ps.setInt(1, 3);
			ps.setString(2, id);
			
			ps.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 RequestDispatcher requestDispatcher=request.getRequestDispatcher("HODDashBoard.jsp");
		 requestDispatcher.forward(request, response);
	}

}
