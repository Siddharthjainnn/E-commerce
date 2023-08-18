package CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DTO.Admin;
import DTO.customer;
import MODAL.admin_model;


@WebServlet("/admin_loginctrl")
public class admin_loginctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a = (String) request.getParameter("user_id");
		String b = (String) request.getParameter("password");

		admin_model model = new admin_model();
		//int i = model.login_admin(a, b);

		
		Admin ok=model.get_admin_login_2(a,b);
		if(ok!=null)
		{
//					RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				response.sendRedirect("admin_page.jsp");
					request.setAttribute("kk", ok);		
					HttpSession session = request.getSession();
					session.setAttribute("m", ok);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
			request.setAttribute("kk", "invallied username or password");	
			rd.forward(request, response);
		}
	}

}
