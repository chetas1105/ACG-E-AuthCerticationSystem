package Office;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogotOffice
 */
@WebServlet("/LogotOffice")
public class LogoutOffice extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LogoutOffice() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();  
	    session.invalidate();
	    response.setHeader("Pragma","no-cache");

	    response.setHeader("Cache-Control","no-store");

	    response.setHeader("Expires","0");

	    response.setDateHeader("Expires",-1);

	    response.sendRedirect("OfficeLogin.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
