package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.order;
import MODAL.admin_model;


@WebServlet("/show_order")
public class show_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customer_id=request.getParameter("user_id");
		String order_id=request.getParameter("user_id");
		admin_model model=new admin_model();
		
		ArrayList<order> list=model.get_order_details(customer_id,order_id);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("order_details.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
