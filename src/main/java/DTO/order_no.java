package DTO;

public class order_no {
	private String order_id;
	private String dynamicValue;
	private String customer_id;
	
	public order_no() {
		// TODO Auto-generated constructor stub
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getDynamicValue() {
		return dynamicValue;
	}

	public void setDynamicValue(String dynamicValue) {
		this.dynamicValue = dynamicValue;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public order_no(String order_id, String dynamicValue, String customer_id) {
		super();
		this.order_id = order_id;
		this.dynamicValue = dynamicValue;
		this.customer_id = customer_id;
	}

	public order_no(String order_id, String dynamicValue) {
		super();
		this.order_id = order_id;
		this.dynamicValue = dynamicValue;
	}
	

}
