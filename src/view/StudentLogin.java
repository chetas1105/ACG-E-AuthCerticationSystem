package view;

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

import controller.StudentLoginDAO;
import controller.GetDataFromDB;
import controller.*;


@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public StudentLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String userId  = request.getParameter("userId");
		String password  = request.getParameter("password");
		HttpSession session = request.getSession();
		String query ="select * from student where userId=? and studentPassword=?";
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
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("StudentLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		if(password==null || userId==""){
			request.setAttribute("status", "InvalidPassword");
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("StudentLogin.jsp");
	        requestDispatcher.forward(request, response);
		}
		
		try {
			if(StudentLoginDAO.validate(userId, password)){
				rs.next();
				if(rs.getInt("flag")==0){
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("changePassword.jsp");
					requestDispatcher.forward(request, response);		
				}
				session.setAttribute("rollNumber", userId);
				session.setAttribute("name", rs.getString("studentFirstName"));
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("StudentDashBoard.jsp");
				response.sendRedirect("StudentDashBoard.jsp");
			    //requestDispatcher.forward(request, response);
				//requestDispatcher.include(request, response);
				
				
				System.out.println("Login successfull");
			}else{
				request.setAttribute("status", "failed");
		        RequestDispatcher requestDispatcher=request.getRequestDispatcher("StudentLogin.jsp");
		        requestDispatcher.forward(request, response);
		        
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
