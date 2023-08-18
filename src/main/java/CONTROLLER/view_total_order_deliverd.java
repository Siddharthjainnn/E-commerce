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
import MODAL.admin_model;


@WebServlet("/view_total_order_deliverd")
public class view_total_order_deliverd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		admin_model model=new admin_model();
		ArrayList<deliver_order> list=model.get_all_deliver_order();
		if(list!=null)
		{
			RequestDispatcher rd =request.getRequestDispatcher("deliver_order_for_admin.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
