package Bonafide;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		System.out.println(dtf.format(now));  
		
		
		HttpSession session = request.getSession();
		String query ="insert into bonafide " + "(rollNumber, firstname, lastName, mobileNumber, dob ,passoutYear, semester) values "+ "(?,?,?,?,?,?,?);";
		String query1 ="insert into allcertificates " + "(RollNumber, studentsName, certificateType, Date, paymentStatus ,ApplicationStatus) values "+ "(?,?,?,?,?,?);";
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
			
			PreparedStatement ps2 = con.prepareStatement(query1);
			ps2.setString(1,  (String) session.getAttribute("rollNumber"));
			ps2.setString(2,  firstName+" "+lastName);
			ps2.setString(3,  "Bonafide Certificate");
			ps2.setString(4,  dtf.format(now));
			ps2.setString(5,  String.valueOf(0));
			ps2.setString(6,  String.valueOf(0));
			
			
			
			
			int result = ps.executeUpdate();
			int result2 = ps2.executeUpdate();
			
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
			e.printStackTrace();
		}
		
		
	}

}
