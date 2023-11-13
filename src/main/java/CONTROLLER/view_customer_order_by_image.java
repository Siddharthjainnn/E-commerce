package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.order_by_image_user_2;
import DTO.order_details_for_admin;
import MODAL.admin_model;


@WebServlet("/view_customer_order_by_image")
public class view_customer_order_by_image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customer_id=request.getParameter("customer_id");
		admin_model model=new admin_model();
		
		ArrayList<order_by_image_user_2> list=model.get_order_details_of_particular_customer_by_image(customer_id);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("order_details_for_customer_image.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
