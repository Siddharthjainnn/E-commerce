package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Add_to_cart;
import MODAL.admin_model;


@WebServlet("/update_quantity")
public class update_quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=request.getParameter("user_id");
		String pro_name=request.getParameter("pro_name");
		String pro_id=request.getParameter("pro_id");
		String cat=request.getParameter("cat");
		String quantity=request.getParameter("quantity");
		double price=Double.parseDouble(request.getParameter("price"));
		
		admin_model model=new admin_model();
		int i=model.update_cart_quantity(user_id,pro_name,pro_id,cat,quantity,price);
		ArrayList<Add_to_cart> list=model.get_all_cart_items(user_id);
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("final_cart_show.jsp");
			request.setAttribute("msg", "item updated");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("final_cart_show.jsp");
			request.setAttribute("msg", "item not updated");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
		}

}
