package Bonafide;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import controller.DBConnector;

/**
 * Servlet implementation class bonfideApplication
 */
@WebServlet("/bonfideApplication")
public class bonfideApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public bonfideApplication() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String firstName  = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String contactNumber = request.getParameter("contact");
		String dob = request.getParameter("dob");
		String passoutYear = request.getParameter("year");
		String semester = request.getParameter("semester");
		
		
		HttpSession session = request.getSession();
		String query ="insert into bonafide " + "(rollNumber, firstname, lastName, mobileNumber, dob ,passoutYear, semester) values "+ "(?,?,?,?,?,?,?);";
		try {
			Connection con = DBConnector.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			
     		ps.setString(1, (String) session.getAttribute("rollNumber"));
			ps.setString(2, firstName);
			ps.setString(3, lastName);
			ps.setString(4, contactNumber);
			ps.setString(5, dob);
			ps.setString(6, passoutYear);
			ps.setString(7, semester);
			
			
			int result = ps.executeUpdate();
			
			if(result > 0){
				System.out.println("Data submitted");
				request.setAttribute("status1", "sucesss");
				RequestDispatcher requestDispatcher=request.getRequestDispatcher("StudentDashBoard.jsp");
		        requestDispatcher.forward(request, response);
				
			}else{
				System.out.println("Data failed");
				request.setAttribute("status1", "failed");
				RequestDispatcher requestDispatcher=request.getRequestDispatcher("StudentDashBoard.jsp");
		        requestDispatcher.forward(request, response);
			}
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
