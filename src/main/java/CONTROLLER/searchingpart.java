package CONTROLLER;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Product;
import MODAL.admin_model;


@WebServlet("/searchingpart")
public class searchingpart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputsearch=request.getParameter("inputsearch");
		admin_model model=new admin_model();
		if(inputsearch.equals("spices")||inputsearch.equals("Spices")||inputsearch.equals("masala")||inputsearch.equals("Masala")||inputsearch.equals("Spicess")||inputsearch.equals("spicess"))
		{
			ArrayList<Product> list=model.get_prospices_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("spicescustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("spicescustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}
		}else if(inputsearch.equals("sugar")||inputsearch.equals("jerry")||inputsearch.equals("Sugar")||inputsearch.equals("Jerry")||inputsearch.equals("sugar product")||inputsearch.equals("Sugar Product"))
		{
			ArrayList<Product> list=model.get_prosugar_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("sugarcustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("sugarcustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}

		}
		else if(inputsearch.equals("oil")||inputsearch.equals("Oil")||inputsearch.equals("OIL")||inputsearch.equals("GHEE")||inputsearch.equals("Ghee")||inputsearch.equals("ghee")||inputsearch.equals("OIL Ghee")||inputsearch.equals("OIL GHEE")||inputsearch.equals("OIL Ghee")||inputsearch.equals("oil ghee"))
		{
			
			ArrayList<Product> list=model.get_pro_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("oil&ghee_customer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("oil&ghee_customer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}

		}else if(inputsearch.equals("soap")||inputsearch.equals("Soap")||inputsearch.equals("SOAP")||inputsearch.equals("Detergent")||inputsearch.equals("detergent")||inputsearch.equals("DETERGENT")||inputsearch.equals("sabun")||inputsearch.equals("shampoo")||inputsearch.equals("Soap products ")||inputsearch.equals("soap products"))
		{
			
			ArrayList<Product> list=model.get_prosoap_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("sop_detergent.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("sop_detergent.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}
		}
		else if(inputsearch.equals("atta")||inputsearch.equals("Atta")||inputsearch.equals("ATTA")||inputsearch.equals("maida")||inputsearch.equals("MAIDA")||inputsearch.equals("Maida")||inputsearch.equals("poha")||inputsearch.equals("POHA")||inputsearch.equals("Poha")||inputsearch.equals("Parmal")||inputsearch.equals("parmal"))
		{
			
			ArrayList<Product> list=model.get_proatta_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("attacustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("attacustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}


		}
		else if(inputsearch.equals("dal")||inputsearch.equals("DAL")||inputsearch.equals("Dal")||inputsearch.equals("moong")||inputsearch.equals("Moong dal")||inputsearch.equals("khadanaj")||inputsearch.equals("Pulse")||inputsearch.equals("pulse")||inputsearch.equals("pulses")||inputsearch.equals("Pulses")||inputsearch.equals("PULSE"))
		{
			
			ArrayList<Product> list=model.get_prodal_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("dalcustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("dalcustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}


		}
		else if(inputsearch.equals("sev")||inputsearch.equals("SEV")||inputsearch.equals("Sev")||inputsearch.equals("Ratlami")||inputsearch.equals("ratlami")||inputsearch.equals("ratlami sev")||inputsearch.equals("laung sev")||inputsearch.equals("Laung sev")||inputsearch.equals("Laung")||inputsearch.equals("laung")||inputsearch.equals("namkeen")||inputsearch.equals("Namkeen"))
		{
			
			ArrayList<Product> list=model.get_prosev_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("sevcustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("sevcustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}


	}
		else if(inputsearch.equals("biscuit")||inputsearch.equals("Biscuit")||inputsearch.equals("BISCUITS")||inputsearch.equals("BISCUIT")||inputsearch.equals("biscuits")||inputsearch.equals("biscuts")||inputsearch.equals("Snacks")||inputsearch.equals("SNACKS")||inputsearch.equals("Biscuit")||inputsearch.equals("CHOCOLATE")||inputsearch.equals("CHOCOLATES")||inputsearch.equals("chocolates")||inputsearch.equals("BISCUITS")||inputsearch.equals("BISCUIT")||inputsearch.equals("biscuits")||inputsearch.equals("biscuts")||inputsearch.equals("Snacks")||inputsearch.equals("SNACKS")||inputsearch.equals("Biscuit")||inputsearch.equals("CHOCOLATE")||inputsearch.equals("CHOCOLATES")||inputsearch.equals("chocolates")||inputsearch.equals("Choclate")||inputsearch.equals("Chocolate")||inputsearch.equals("Toffee")||inputsearch.equals("TOFFEE")||inputsearch.equals("toffee"))
		{
			
			ArrayList<Product> list=model.get_probusicts_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("biscuitcustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("biscuitcustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}


	}
		else if(inputsearch.equals("AGARBATTI")||inputsearch.equals("Agarbatti")||inputsearch.equals("agarbatti")||inputsearch.equals("Agarbati")||inputsearch.equals("AGARBATI")||inputsearch.equals("PUJA")||inputsearch.equals("puja")||inputsearch.equals("Puja")||inputsearch.equals("puja"))
		{
			
			ArrayList<Product> list=model.get_proagabatti_admin();
			if(list!=null)
			{
				RequestDispatcher rd=request.getRequestDispatcher("agarbaticustomer.jsp");
				request.setAttribute("LIST", list);
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("agarbaticustomer.jsp");
				request.setAttribute("LIST", "msg not available");
				rd.forward(request, response);
			}
	
}else if(inputsearch.equals("DRYFRUITS")||inputsearch.equals("Dryfruits")||inputsearch.equals("dryfruits")||inputsearch.equals("KAJU")||inputsearch.equals("kaju")||inputsearch.equals("Kaju")||inputsearch.equals("kAJU")||inputsearch.equals("BADAM")||inputsearch.equals("Badam")||inputsearch.equals("bADAM")||inputsearch.equals("badam")||inputsearch.equals("dry"))
{
	
	ArrayList<Product> list=model.get_prodryfruit_admin();
	if(list!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("drycustomer.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("drycustomer.jsp");
		request.setAttribute("LIST", "msg not available");
		rd.forward(request, response);
	}
		
}
else if(inputsearch.equals("DAILY ESSENTIAL")||inputsearch.equals("dAILY ESSENTIAL")||inputsearch.equals("Daily")||inputsearch.equals("ESSENTIAL")||inputsearch.equals("daily essential")||inputsearch.equals("Daily Essential")||inputsearch.equals("Daily Items")||inputsearch.equals("ITEMS")||inputsearch.equals("daily product")||inputsearch.equals("daily")||inputsearch.equals("item")||inputsearch.equals("items"))
{
	
	ArrayList<Product> list=model.get_prodailyess_admin();
	if(list!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("dailycustomer.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("dailycustomer.jsp");
		request.setAttribute("LIST", "msg not available");
		rd.forward(request, response);
	}
	}else if(inputsearch.equals("DAIRY PRODUCTS")||inputsearch.equals("dairy products")||inputsearch.equals("dairy")||inputsearch.equals("Dairy")||inputsearch.equals("MILK")||inputsearch.equals("milk")||inputsearch.equals("Milk")||inputsearch.equals("Dahi")||inputsearch.equals("DAHI")||inputsearch.equals("CURD")||inputsearch.equals("Curd")||inputsearch.equals("GHEE")||inputsearch.equals("Ghee")||inputsearch.equals("ghee"))
	{
		
		ArrayList<Product> list=model.get_prodairy_admin();
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("dairycustomer.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("dairycustomer.jsp");
			request.setAttribute("LIST", "msg not available");
			rd.forward(request, response);
		}

	
}else if(inputsearch.equals("zz"))
{
	
	ArrayList<Product> list=model.get_all_product();
	if(list!=null)
	{
		RequestDispatcher rd=request.getRequestDispatcher("all_product.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=request.getRequestDispatcher("all_product.jsp");
		request.setAttribute("LIST", "msg not available");
		rd.forward(request, response);
	}

}
	
	
	
	else 
{
	
	
	
//		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
//		request.setAttribute("msg", "category/item not found");
//		rd.forward(request, response);
		
		

		//ArrayList<Product> list=model.get_all_product();
		ArrayList<Product> list=model.get_all_product_like(inputsearch);
		if(list!=null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("all_product.jsp");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("all_product.jsp");
			request.setAttribute("LIST", "msg not available");
			rd.forward(request, response);
		}

	}
		
		
	

}
	}
	


