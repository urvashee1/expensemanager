package com.growinted.bean;

public class ExpenseChartBean {
String month;
Integer categoryId;
Integer vendorId;
Long amount;
public String getMonth() {
	return month;
}
public void setMonth(String month) {
	this.month = month;
}
public Long getAmount() {
	return amount;
}
public void setAmount(Long amount) {
	this.amount = amount;
}
public Integer getCategoryId() {
	return categoryId;
}
public void setCategoryId(Integer categoryId) {
	this.categoryId = categoryId;
}
public Integer getVendorId() {
	return vendorId;
}
public void setVendorId(Integer vendorId) {
	this.vendorId = vendorId;
}
}
