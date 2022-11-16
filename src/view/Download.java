package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Download() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String certificateId = request.getParameter("bt1");
		String FILE_NAME = "E:\\Temp\\NEW\\chillyfacts.pdf";
        Document document = new Document();
        
        try {
            PdfWriter.getInstance(document, new FileOutputStream(new File(FILE_NAME)));
            document.open();
            Paragraph p = new Paragraph();
            p.add("Text 1");
            p.setAlignment(Element.ALIGN_CENTER);
            document.add(p);
            Paragraph p2 = new Paragraph();
            p2.add("Text 2"); //no alignment
            document.add(p2);
            Font f = new Font();
            f.setStyle(Font.BOLD);
            f.setSize(8);
            document.add(new Paragraph("This is my paragraph chetas", f));
            document.close();
            System.out.println("Done");
        } catch (Exception e) {
            e.printStackTrace();
        } 
        
        
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("bonafide_certificate_preview.jsp");
        requestDispatcher.forward(request, response);
		
	}

}
