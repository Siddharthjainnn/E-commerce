package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;


@WebServlet("/ceck_otp_2")
public class ceck_otp_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String otp_generated=(String)request.getParameter("otp_generated");
		String email_id=(String)request.getParameter("user_id");
		String a=(String)request.getParameter("1st");
		String b=(String)request.getParameter("2st");
		String c=(String)request.getParameter("3st");
		String d=(String)request.getParameter("4st");
		String e=a+b+c+d;
		
		
		admin_model model=new admin_model();
		int i=model.check_otp_sir(e,otp_generated);
		new_customer_add list=model.get_all_customer_details(email_id);
		
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			//response.sendRedirect("new_password.jsp");
			request.setAttribute("list",list);
			rd.forward(request, response);
			
			//RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			//response.sendRedirect("profile.jsp");
			//request.setAttribute("msg", "welcome to password updated");
			//request.setAttribute("LIST",list);
//			rd.forward(request, response);
			System.out.println("otp correct");
			
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("verify_2.jsp");
			//response.sendRedirect("new_password.jsp");
			request.setAttribute("msg", "otp enterd is not correct");
			request.setAttribute("list",list);
			rd.forward(request, response);
			
			//RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			//response.sendRedirect("profile.jsp");
			//request.setAttribute("msg", "welcome to password updated");
			//request.setAttribute("LIST",list);
//			rd.forward(request, response);
			System.out.println("otp is not correct");
		}
	}

}
