package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MODAL.admin_model;


@WebServlet("/logoutctrl")
public class logoutstrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		admin_model model=new admin_model();
		//int i=	model.delete_cart();
		session.invalidate();
		response.sendRedirect("home.jsp");
		
		response.setHeader("cache-control", "no-store");
		response.setHeader("pragma", "no-cache");
		response.setHeader("expire", "0");
		
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
