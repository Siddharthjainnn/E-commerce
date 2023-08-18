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
import DTO.order;
import DTO.order_no;
import MODAL.admin_model;

@WebServlet("/MyServlet_2")
public class MyServlet_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dynamicValue = request.getParameter("dynamicValue");
		String order_id = request.getParameter("order_id");
		String customer_id = request.getParameter("customer_id");
		String date=request.getParameter("date");

		admin_model model = new admin_model();
		int y = model.orders_2(customer_id,order_id, dynamicValue,date);
		if (y == 0) {
			
			
			int i = model.orders_1(customer_id,order_id, dynamicValue,date);
			ArrayList<Add_to_cart> list = model.get_all_cart_items(order_id);
			ArrayList<order> list2 = model.get_order_details(customer_id, order_id);
			if (i != 0) {
				/*
				 * RequestDispatcher rd=request.getRequestDispatcher("final_cart_show.jsp");
				 */
				RequestDispatcher rd = request.getRequestDispatcher("details_confirm.jsp");

				request.setAttribute("msg", "delivery inquiry page");
				request.setAttribute("LIST", list);
				request.setAttribute("LIST", list2);

				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("final_cart_show.jsp");
				request.setAttribute("msg", "order not  placed");
				request.setAttribute("LIST", list);

				rd.forward(request, response);
			}
		}else {
			ArrayList<Add_to_cart> list = model.get_all_cart_items(order_id);
			ArrayList<order> list2 = model.get_order_details(customer_id, order_id);
			
				/*
				 * RequestDispatcher rd=request.getRequestDispatcher("final_cart_show.jsp");
				 */
				RequestDispatcher rd = request.getRequestDispatcher("details_confirm.jsp");

				request.setAttribute("msg", "delivery inquiry page");
				request.setAttribute("LIST", list);
				request.setAttribute("LIST", list2);

				rd.forward(request, response);
			
			}

	}
	}
