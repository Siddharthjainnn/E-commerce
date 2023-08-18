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


@WebServlet("/show_Product_admin_10")
public class show_Product_admin_10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		admin_model model=new admin_model();
		ArrayList<Product> list=model.get_prodryfruit_admin();
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("dryfruitdmin.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("admin_product_show.jsp");
			request.setAttribute("LIST", "msg not available");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
