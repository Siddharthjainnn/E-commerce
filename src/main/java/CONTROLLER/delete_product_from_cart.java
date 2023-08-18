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

@WebServlet("/delete_product_from_cart")
public class delete_product_from_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        String b=(String)request.getParameter("user_id");
        System.out.println(b+"hello mera naame siddharth jj");
		String a = (String) request.getParameter("pro_id");
		 System.out.println(a);
		admin_model model = new admin_model();
		int i = model.delete_pro_cart(a);
		ArrayList<Add_to_cart> list=model.get_all_cart_items(b);
		//ArrayList<Add_to_cart> list = model.get_all_cart_items(b);
		if (i != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("final_cart_show.jsp");
			request.setAttribute("LIST", list);
			request.setAttribute("msg", " product removed from cart");
			
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("final_cart_show.jsp");
			request.setAttribute("msg", " product not removed from cart");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
