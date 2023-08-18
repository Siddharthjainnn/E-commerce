package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/confirm_order_bt_admin")
public class confirm_order_bt_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("order_id");
		admin_model model=new admin_model();
		int i=model.get_update_status(a);
		if(i!=0)
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin_page.jsp");
			request.setAttribute("msg", "status change");
			rd.forward(request, response);
		}

	}

}
