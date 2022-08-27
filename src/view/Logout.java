package view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logout() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//        if (session != null) {
//            session.removeAttribute("name");
//            session.invalidate();
//            response.setHeader("Cache-Control", "no-cache");
//            response.setHeader("Pragma", "no-cache");
//            response.setDateHeader("Expires", 0);
//            response.sendRedirect("StudentLogin.jsp");
//            
//            RequestDispatcher dispatcher = request.getRequestDispatcher("StudentLogin.jsp");
//            dispatcher.forward(request, response);
//           
//        }
		HttpSession session=request.getSession();  
	    session.invalidate();
	    response.setHeader("Pragma","no-cache");

	    response.setHeader("Cache-Control","no-store");

	    response.setHeader("Expires","0");

	    response.setDateHeader("Expires",-1);

	    response.sendRedirect("StudentLogin.jsp");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
