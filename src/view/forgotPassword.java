package view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import controller.DBConnector;


@WebServlet("/forgotPassword")
public class forgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public forgotPassword() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String email;
		RequestDispatcher dispatcher = null;
		int otpvalue = 0;
		HttpSession mySession = request.getSession();
		
		if(userId == null || userId==""){
			request.setAttribute("status", "InvalidUserId");
	        RequestDispatcher requestDispatcher=request.getRequestDispatcher("forgotPassword.jsp");
	        requestDispatcher.forward(request, response);
		}
		else{
			String query ="select * from student where userId=?";
			ResultSet rs = null;
			Connection conn = null;
			try {
				conn = DBConnector.getConnection();;
				PreparedStatement ps=conn.prepareStatement(query);  
				ps.setString(1, userId);
				
				rs=ps.executeQuery(); 
				rs.next();
				email=rs.getString("studentEmail");
				
				if(email!=null || !email.equals("")) {
					// sending otp
					Random rand = new Random();
					otpvalue = rand.nextInt(1255650);

					String to = email;// change accordingly
					// Get the session object
					Properties props = new Properties();
					props.put("mail.smtp.host", "smtp.gmail.com");
					props.put("mail.smtp.socketFactory.port", "465");
					props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
					props.put("mail.smtp.auth", "true");
					props.put("mail.smtp.port", "465");
					Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("chetas.h.1105@gmail.com", "yonwdwsuwscjfwkd");// Put your email
																											// id and
																											// password here
						}
					});
					// compose message
					try {
						MimeMessage message = new MimeMessage(session);
						message.setFrom(new InternetAddress(email));// change accordingly
						message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
						message.setSubject("Hello");
						message.setText("your OTP is: " + otpvalue);
						// send message
						Transport.send(message);
						System.out.println("message sent successfully");
					}catch (MessagingException e) {
						throw new RuntimeException(e);
					}
					dispatcher = request.getRequestDispatcher("EnterOtp.jsp");
					request.setAttribute("message","OTP is sent to your email id");
					//request.setAttribute("connection", con);
					mySession.setAttribute("otp",otpvalue); 
					mySession.setAttribute("email",email); 
					dispatcher.forward(request, response);
					//request.setAttribute("status", "success");

				
					} 
				}catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
	}
		


