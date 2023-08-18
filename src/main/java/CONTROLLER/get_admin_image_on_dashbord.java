package CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODAL.admin_model;


@WebServlet("/get_admin_image_on_dashbord")
public class get_admin_image_on_dashbord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String user_id=request.getParameter("user_id");
			admin_model model=new admin_model();
			byte[] img=	model.get_admin_img(user_id);
			ServletOutputStream sos=null;
			if(img!=null)
			{
				System.out.println("i got the image");
				sos=response.getOutputStream();
				sos.write(img);
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
