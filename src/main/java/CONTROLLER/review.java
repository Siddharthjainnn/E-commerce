package CONTROLLER;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/review")
public class review extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message=request.getParameter("review");
		String email_id=request.getParameter("email_id");
//		System.out.println("<html>"+"");
		System.out.println("simpleEmail Start");
		String emailID="siddhujain1208@outlook.com";
		String password="Siddharthjain123@...11";
		String torecipt=email_id;
		
		Properties props =System.getProperties();
		props.put("mail.smtp.host", "Outlook.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port","587");
		props.put("mail.smtp.starttls.enable", "true");
		
		Authenticator auth=new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(emailID, password);
			}
		};
		
		System.out.println("hello to everyone");
		Session session=Session.getInstance(props, auth);
		System.out.println("kkkk");
		admin_model model=new admin_model();
		System.out.println("jjjjj");
		
		
		  		  String msgg=".....WELCOME TO JAIN PROVISION STORE ....."
		  		+ " THANKYOU FOR GIVEING US REVIEW ::=>  "+message;
		  System.out.println(message);
		  
		  
		 
	String aa=	model.sendreviewEmail(session,emailID,torecipt,"JAIN PROVISION STORE REVIEW",msgg);
	if(aa!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		request.setAttribute("msg", "Thankyou for review sir/madam");
		rd.forward(request, response);
	}
	}

		
	}


