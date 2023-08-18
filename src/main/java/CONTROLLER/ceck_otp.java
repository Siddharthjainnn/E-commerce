package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/ceck_otp")
public class ceck_otp extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * int a=Integer.parseInt(request.getParameter("1st")); int
		 * a1=Integer.parseInt(request.getParameter("2st")); int
		 * a2=Integer.parseInt(request.getParameter("3st")); int
		 * a3=Integer.parseInt(request.getParameter("4st"));
		 */
String otp_generated=(String)request.getParameter("otp_generated");
		String a=(String)request.getParameter("1st");
		String b=(String)request.getParameter("2st");
		String c=(String)request.getParameter("3st");
		String d=(String)request.getParameter("4st");
		String e=a+b+c+d;
		
		
		admin_model model=new admin_model();
		int i=model.check_otp_sir(e,otp_generated);
		
		if(i!=0)
		{
			response.sendRedirect("home.jsp");
			System.out.println("otp correct");
		}
			
	}

}
