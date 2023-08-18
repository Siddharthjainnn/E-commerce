package DTO;

import javax.servlet.http.Part;

public class Add_to_cart {
	private String name;
	private String pro_id;
	private String category;
	private String quantity;
	private double price;
	private Part image;
	private double Total_price;
	
	public Add_to_cart() {
		// TODO Auto-generated constructor stub
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

	public double getPro_price() {
		return price;
	}

	public void setPro_price(double pro_price) {
		this.price = pro_price;
	}

	public Part getImage() {
		return image;
	}

	public void setImage(Part image) {
		this.image = image;
	}

	public double getTotal_price() {
		return Total_price;
	}

	public void setTotal_price(double total_price) {
		Total_price = total_price;
	}

	public Add_to_cart(String name, String pro_id, String category, String quantity, double pro_price, Part image,
			double total_price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = pro_price;
		this.image = image;
		Total_price = total_price;
	}

	public Add_to_cart(String name, String pro_id, String category, String quantity, double pro_price,
			double total_price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = pro_price;
		Total_price = total_price;
	}

	public Add_to_cart(String name, String pro_id, String category, String quantity, double pro_price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = pro_price;
	}
	
	

}
