package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.order_by_image_user_2;
import MODAL.admin_model;


@WebServlet("/get_all_order_for_image_order")
public class get_all_order_for_image_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	admin_model model=new admin_model();
	ArrayList<order_by_image_user_2> list=model.get_all_order();
	if(list!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("all_order_details_for_image.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
