package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.checkoutpage;
import MODAL.admin_model;


@WebServlet("/view_order_for_customer_on_order_id_and_customer_id")
public class view_order_for_customer_on_order_id_and_customer_id extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("order_id");
		String b=request.getParameter("customer_id");
		admin_model model=new admin_model();
		ArrayList<checkoutpage> list=model.get_order_details_for_customer(a,b);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("order_tracking_page.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
