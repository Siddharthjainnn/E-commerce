package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.deliver_order;
import DTO.order_details_for_admin;
import MODAL.admin_model;


@WebServlet("/view_deliverd_customer_order")
public class view_deliverd_customer_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customer_id=request.getParameter("customer_id");
		admin_model model=new admin_model();
		
		ArrayList<deliver_order> list=model.get_deiverd_order_details_of_particular_customer(customer_id);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("order_deliverd_for_customer.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
