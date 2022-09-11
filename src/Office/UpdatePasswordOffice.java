package Office;

import java.io.IOException;
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

import controller.DBConnector;

@WebServlet("/UpdatePasswordOffice")
public class UpdatePasswordOffice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdatePasswordOffice() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("Password");
    	String confirmPassword = request.getParameter("ConfirmPassword");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		Connection conn = null;
		String query = "update office set officePassword = ?,flag= ? where OfficeEmail = ?";
    	
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
					dispatcher = request.getRequestDispatcher("OfficeLogin.jsp");
					dispatcher.forward(request, response);
					response.sendRedirect("OfficeLogin.jsp");
					
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("OfficeLogin.jsp");
					dispatcher.forward(request, response);
					response.sendRedirect("OfficeLogin.jsp");
					
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			
    		
    	}
		else if(!password.equals(confirmPassword)){
			request.setAttribute("status", "misMatch");
			dispatcher = request.getRequestDispatcher("changePasswordOffice.jsp");
			dispatcher.forward(request, response);
			response.sendRedirect("changePasswordOffice.jsp");
			
		}
	}

}
