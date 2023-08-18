package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.order_details_for_admin;
import MODAL.admin_model;


@WebServlet("/view_admin_order_details")
public class view_admin_order_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		admin_model model=new admin_model();
		ArrayList<order_details_for_admin> list=model.get_all_order_for_admin();
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("how_many_order.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
