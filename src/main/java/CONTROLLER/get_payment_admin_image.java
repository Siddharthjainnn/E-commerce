package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/get_payment_admin_image")
public class get_payment_admin_image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String order_id=request.getParameter("order_id");
		System.out.println(order_id+"hello to everyone");
		admin_model model=new admin_model();
		byte[] img=	model.get_payment_img(order_id);
		ServletOutputStream sos=null;
		if(img!=null)
		{
			sos=response.getOutputStream();
			sos.write(img);
		}
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
