package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.order_by_image_user_2;
import MODAL.admin_model;


@WebServlet("/view_order_for_customer_on_order_id_and_customer_id_order_id_by_image_FOR_ADMIN")
public class view_order_for_customer_on_order_id_and_customer_id_order_id_by_image_FOR_ADMIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=(String)request.getParameter("order_id");
		String b=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
		order_by_image_user_2 list=model.get_all_data(a,b);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("order_details_page_by_image_2.jsp");
			request.setAttribute("List", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("");
			request.setAttribute("msg", "not available");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
