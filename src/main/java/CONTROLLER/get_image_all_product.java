package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/get_image_all_product")
public class get_image_all_product extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("pro_id");
		System.out.println(a);
		admin_model model=new admin_model();
	byte[] img=	model.get_all_product_img(a);
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
