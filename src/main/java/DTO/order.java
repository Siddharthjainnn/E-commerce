package DTO;

public class order {
	private String name;
	private String	id; 
	private String	category; 
	private String	quantity; 
	private double	price;
	private String customer_id;
	private String	order_id;
	private String	dynamicValuel;
	private String date;
	
	
	public order(String name, String id, String category, String quantity, double price, String customer_id,
			String order_id, String dynamicValuel, String date) {
		super();
		this.name = name;
		this.id = id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.customer_id = customer_id;
		this.order_id = order_id;
		this.dynamicValuel = dynamicValuel;
		this.date = date;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public order() {
		// TODO Auto-generated constructor stub
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public String getOrder_id() {
		return order_id;
	}


	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}


	public String getDynamicValuel() {
		return dynamicValuel;
	}


	public void setDynamicValuel(String dynamicValuel) {
		this.dynamicValuel = dynamicValuel;
	}


	public order(String name, String id, String category, String quantity, double price, String customer_id,
			String order_id, String dynamicValuel) {
		super();
		this.name = name;
		this.id = id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.customer_id = customer_id;
		this.order_id = order_id;
		this.dynamicValuel = dynamicValuel;
	}


	
	

}
