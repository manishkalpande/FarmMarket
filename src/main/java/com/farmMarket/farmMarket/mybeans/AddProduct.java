package com.farmMarket.farmMarket.mybeans;

public class AddProduct {
private String prod_id;
private String prod_name;
private String prod_type;
private String seller_id;
private String prod_title;
private String prod_desc;
private String prod_quantity;
private String prod_quantity_type;
private int prod_price;

public AddProduct() {
	prod_id="";
	prod_name="";
	prod_type="";
	seller_id="";
	prod_title="";
	prod_desc="";
	prod_quantity="";
	prod_quantity_type="";
	prod_price=0;
}

public String getProd_id() {
	return prod_id;
}

public void setProd_id(String prod_id) {
	this.prod_id = prod_id;
}

public String getProd_name() {
	return prod_name;
}

public void setProd_name(String prod_name) {
	this.prod_name = prod_name;
}

public String getProd_type() {
	return prod_type;
}

public void setProd_type(String prod_type) {
	this.prod_type = prod_type;
}

public String getSeller_id() {
	return seller_id;
}

public void setSeller_id(String seller_id) {
	this.seller_id = seller_id;
}

public String getProd_title() {
	return prod_title;
}

public void setProd_title(String prod_title) {
	this.prod_title = prod_title;
}

public String getProd_desc() {
	return prod_desc;
}

public void setProd_desc(String prod_desc) {
	this.prod_desc = prod_desc;
}

public String getProd_quantity() {
	return prod_quantity;
}

public void setProd_quantity(String prod_quantity) {
	this.prod_quantity = prod_quantity;
}

public String getProd_quantity_type() {
	return prod_quantity_type;
}

public void setProd_quantity_type(String prod_quantity_type) {
	this.prod_quantity_type = prod_quantity_type;
}

public int getProd_price() {
	return prod_price;
}

public void setProd_price(int prod_price) {
	this.prod_price = prod_price;
}

@Override
public String toString() {
	return "AddProduct [prod_id=" + prod_id + ", prod_name=" + prod_name + ", prod_type=" + prod_type + ", seller_id="
			+ seller_id + ", prod_title=" + prod_title + ", prod_desc=" + prod_desc + ", prod_quantity=" + prod_quantity
			+ ", prod_quantity_type=" + prod_quantity_type + ", prod_price=" + prod_price + "]";
}


}
