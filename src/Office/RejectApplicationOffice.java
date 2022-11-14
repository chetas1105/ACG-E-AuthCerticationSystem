package Office;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/RejectApplicationOffice")
public class RejectApplicationOffice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RejectApplicationOffice() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("bt1");
		request.setAttribute("roll",id);
		RequestDispatcher rd = request.getRequestDispatcher("Remark.jsp");
		rd.forward(request,response);
	}

}
