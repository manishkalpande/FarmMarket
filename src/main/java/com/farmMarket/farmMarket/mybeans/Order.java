package com.farmMarket.farmMarket.mybeans;

import java.util.Date;

public class Order {
	
	private String orderid;
	private String customerid;
	private String sellerid;
	private String prodid;
	private int productPrice;
	private String prodQuantity;
	private String prodUnit;
	private String prodTitle;
	private Date date;
	private String paymenttype;
	private String orderStatus;
	private String message;
	
	public Order()
	{
		orderid="";
		customerid="";
		sellerid="";
		prodid="";
		date=null;
		paymenttype="";
		orderStatus="";
		message="";
		productPrice=0;
		prodQuantity="";
		prodUnit="";
		prodTitle="";
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getSellerid() {
		return sellerid;
	}

	public void setSellerid(String sellerid) {
		this.sellerid = sellerid;
	}

	public String getProdid() {
		return prodid;
	}

	public void setProdid(String prodid) {
		this.prodid = prodid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProdQuantity() {
		return prodQuantity;
	}

	public void setProdQuantity(String prodQuantity) {
		this.prodQuantity = prodQuantity;
	}

	public String getProdUnit() {
		return prodUnit;
	}

	public void setProdUnit(String prodUnit) {
		this.prodUnit = prodUnit;
	}
	
	

	public String getProdTitle() {
		return prodTitle;
	}

	public void setProdTitle(String prodTitle) {
		this.prodTitle = prodTitle;
	}

	


}
