package HOD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/HODLogout")
public class HODLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public HODLogout() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();  
	    session.invalidate();
	    response.setHeader("Pragma","no-cache");

	    response.setHeader("Cache-Control","no-store");

	    response.setHeader("Expires","0");

	    response.setDateHeader("Expires",-1);

	    response.sendRedirect("HODLogin.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
