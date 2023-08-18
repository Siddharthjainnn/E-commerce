package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.customer;
import DTO.new_customer_add;
import MODAL.admin_model;


@WebServlet("/update_password")
public class update_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String)request.getParameter("user_id");
		String password_new=(String)request.getParameter("pass");
		String password_new_2=(String)request.getParameter("pass_2");
		admin_model model=new admin_model();
		new_customer_add list=model.get_all_customer_details(user_id);
		if(password_new.equals(password_new_2))
		{
		
		int i=model.update_password(user_id,password_new);
		
		if(i!=0)
		{
			/*
			 * RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			 * 
			 * request.setAttribute("msg", " password updated sucessfully");
			 * request.setAttribute("list", list); rd.forward(request, response);
			 */
			try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("login.jsp");
		}
		
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("new_password.jsp");
			request.setAttribute("msg", " re-password is not correct");
			request.setAttribute("list", list);
			rd.forward(request, response);
		}
	}

}
