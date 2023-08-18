package DTO;

import javax.servlet.http.Part;

public class Cart_with_final_show 
{
	private String name;
	private String pro_id;
	private String category;
	private String quantity;
	private double price;
	private String customer_id;
	private String total_price;
	
	public Cart_with_final_show() {
		// TODO Auto-generated constructor stub
	}
	public Cart_with_final_show(String name, String pro_id, String category, String quantity, double price,
			String customer_id, String total_price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.customer_id = customer_id;
		this.total_price = total_price;
	}
	public String getTotal_price() {
		return total_price;
	}
	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPro_id() {
		return pro_id;
	}
	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public Cart_with_final_show(String name, String pro_id, String category, String quantity, double price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
	}
	public Cart_with_final_show(String name, String pro_id, String category, String quantity, double price,
			String customer_id) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.customer_id = customer_id;
	}
	
	

}
