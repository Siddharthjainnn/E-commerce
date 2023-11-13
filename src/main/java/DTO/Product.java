package DTO;

import javax.servlet.http.Part;

public class Product {
	private String name;
	private String pro_id;
	private String category;
	private String quantity;
	private double price;
	private Part image;
	public Product() {
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Part getImage() {
		return image;
	}
	public void setImage(Part image) {
		this.image = image;
	}
	public Product(String name, String pro_id, String category, String quantity, double price, Part image) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.image = image;
	}
	public Product(String name, String pro_id, String category, String quantity, double price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
	}
	public Product(String string, String string2, String string3, String string4, double double1, byte byte1) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.image=image;
	}
	public Product(String name, String pro_id, String category, double price) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.price = price;
	}
	

}
