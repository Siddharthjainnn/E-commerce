package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Product;
import MODAL.admin_model;

/**
 * Servlet implementation class dalcustomer
 */
@WebServlet("/dalcustomer")
public class dalcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		admin_model model=new admin_model();
		ArrayList<Product> list=model.get_prodal_admin();
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("dalcustomer.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("dalcustomer.jsp");
			request.setAttribute("LIST", "msg not available");
			rd.forward(request, response);
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
