package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;


@WebServlet("/otp_servelet_for_forgot_password")
public class otp_servelet_for_forgot_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
		new_customer_add list=model.get_particulear_customer_details_for_otp(user_id);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("user_id_verification_1.jsp");
			//RequestDispatcher rd=request.getRequestDispatcher("user_id_verification.jsp");
			request.setAttribute("list", list);
			rd.forward(request, response);
		}
	}

}
