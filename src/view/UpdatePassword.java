package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.*;

@WebServlet("/UpdatePassword")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatePassword() {
        super();
        
    }

    @SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String password = request.getParameter("Password");
    	String confirmPassword = request.getParameter("ConfirmPassword");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		Connection conn = null;
		String query = "update student set studentPassword = ?,flag= ? where studentEmail = ?";
    	
		if (password != null && confirmPassword != null && password.equals(confirmPassword)) {
			try {
				conn = DBConnector.getConnection();
				PreparedStatement ps=conn.prepareStatement(query);  
				ps.setString(1, password);
				ps.setInt(2, 1);
				ps.setString(3, (String) session.getAttribute("email"));
				
				int rowCount = ps.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status", "resetSuccess");
					dispatcher = request.getRequestDispatcher("StudentLogin.jsp");
					dispatcher.forward(request, response);
					response.sendRedirect("StudentLogin.jsp");
					
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("StudentLogin.jsp");
					dispatcher.forward(request, response);
					response.sendRedirect("StudentLogin.jsp");
					
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
    		
    	}
		else if(!password.equals(confirmPassword)){
			request.setAttribute("status", "misMatch");
			dispatcher = request.getRequestDispatcher("changePassword.jsp");
			dispatcher.forward(request, response);
			response.sendRedirect("changePassword.jsp");
			
		}
	}

}
