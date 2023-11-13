package DTO;

public class product_new {
	private String name;
	private String pro_id;
	private String category;
	private String quantity;
	private double price;
	private double offer_price;
	private String str_date;
	private String end_date;
	public product_new() {
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
	public double getOffer_price() {
		return offer_price;
	}
	public void setOffer_price(double offer_price) {
		this.offer_price = offer_price;
	}
	public String getStr_date() {
		return str_date;
	}
	public void setStr_date(String str_date) {
		this.str_date = str_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public product_new(String name, String pro_id, String category, String quantity, double price, double offer_price,
			String str_date, String end_date) {
		super();
		this.name = name;
		this.pro_id = pro_id;
		this.category = category;
		this.quantity = quantity;
		this.price = price;
		this.offer_price = offer_price;
		this.str_date = str_date;
		this.end_date = end_date;
	}
	
	
}
