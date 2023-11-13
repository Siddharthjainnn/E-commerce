package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.billing;
import MODAL.admin_model;


@WebServlet("/dekstopbilling")
public class dekstopbilling extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("name");
		String b=request.getParameter("billingid");
		String c=request.getParameter("email_id");
		String d=request.getParameter("mobile_no");
		admin_model model=new admin_model();
		int i=model.billing_1(a,b,c,d);
		if(i!=0)
		{
			//RequestDispatcher rd=request.getRequestDispatcher("dekstop_billing_2.jsp");
			//response.sendRedirect("dekstop_billing_2.jsp");
			
			billing list=model.get_billing_information(b);
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("dekstop_billing_2.jsp");
				request.setAttribute("list", list);
				rd.forward(request, response);
			}
		
		}
	}

}
