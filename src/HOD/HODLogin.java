package HOD;

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

import Office.OfficeLoginDAO;
import controller.DBConnector;


@WebServlet("/HODLogin")
public class HODLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public HODLogin() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId  = request.getParameter("HodUserID");
		String password  = request.getParameter("HodPassword");
		HttpSession session = request.getSession();
		String query ="select * from hod where hodUserid=? and hodPassword=?";
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
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("HODLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		if(password==null || userId==""){
			request.setAttribute("status", "InvalidPassword");
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("HODLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		
		try {
			if(HODLoginDAO.validate(userId, password)){
				rs.next();
				if(rs.getInt("flag")==0){
					session.setAttribute("email", rs.getString("HODEmail"));
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("changePasswordHOD.jsp");
					requestDispatcher.forward(request, response);		
				}
				rs.next();
				session.setAttribute("HODFirstName", rs.getString("hodFirstName"));
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("HODDashBoard.jsp");
				requestDispatcher.forward(request, response);
				System.out.println("Login successfull");
			}else{
				request.setAttribute("status", "failed");
		        RequestDispatcher requestDispatcher=request.getRequestDispatcher("HODLogin.jsp");
		        requestDispatcher.forward(request, response);
		        
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}

	}

}
