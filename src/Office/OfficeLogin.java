package Office;

import java.io.IOException;
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

import controller.DBConnector;
import controller.StudentLoginDAO;

@WebServlet("/OfficeLogin")
public class OfficeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OfficeLogin() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId  = request.getParameter("officeUserId");
		String password  = request.getParameter("officePassword");
		HttpSession session = request.getSession();
		String query ="select * from office where officeUserId=? and officePassword=?";
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = DBConnector.getConnection();;
			PreparedStatement ps=conn.prepareStatement(query);  
			ps.setString(1, userId);
			ps.setString(2, password);
			
			rs=ps.executeQuery(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(userId==null || userId==""){
			request.setAttribute("status", "InvalidUserId");
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("OfficeLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		if(password==null || userId==""){
			request.setAttribute("status", "InvalidPassword");
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("OfficeLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		
		try {
			if(OfficeLoginDAO.validate(userId, password)){
				rs.next();
				if(rs.getInt("flag")==0){
					session.setAttribute("email", rs.getString("OfficeEmail"));
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("changePasswordOffice.jsp");
					requestDispatcher.forward(request, response);		
				}
				session.setAttribute("OfficeName", rs.getString("officeFirstName"));
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("OfficeDashBoard.jsp");
				requestDispatcher.forward(request, response);
				System.out.println("Login successfull");
			}else{
				request.setAttribute("status", "failed");
		        RequestDispatcher requestDispatcher=request.getRequestDispatcher("OfficeLogin.jsp");
		        requestDispatcher.forward(request, response);
		        
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}


		
	}
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	doGet(request, response);		
	}

}
