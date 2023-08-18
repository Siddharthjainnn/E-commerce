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


@WebServlet("/get_final_cart")
public class get_final_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String)request.getParameter("user_id");
		admin_model model=new admin_model();
		ArrayList<Add_to_cart> list=model.get_all_cart_items(user_id);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("final_cart_show.jsp");
			//RequestDispatcher rs=request.getRequestDispatcher("check_out page.jsp");
			
			request.setAttribute("LIST", list);
			rd.forward(request, response);
			//rs.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
			request.setAttribute("LIST", "not available");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
