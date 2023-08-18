package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/deliverd_order_admin")
public class deliverd_order_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("order_id");
		String b=request.getParameter("customer_id");
		admin_model model=new admin_model();
		int i=model.get_update_status_89(a);	
	        String currentDate = java.time.LocalDate.now().toString(); 
		int j=model.add_to_new_table_order_deliverd(a,b,currentDate);
		if(j!=0)
		{
			int k=model.delete_order_which_is_deliverd(a);
		}
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin_page.jsp");
			request.setAttribute("msg", "status change");
			rd.forward(request, response);
		}
	}
}
