package com.growinted.bean;

public class IncomeBean {
private Integer incomeId;
private String title;
private String date;
private String description;
private Integer accountTypeId;
private Integer statusId;
private Boolean deleted;
public Integer getIncomeId() {
	return incomeId;
}
public void setIncomeId(Integer incomeId) {
	this.incomeId = incomeId;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public Integer getAccountTypeId() {
	return accountTypeId;
}
public void setAccountTypeId(Integer accountTypeId) {
	this.accountTypeId = accountTypeId;
}
public Integer getStatusId() {
	return statusId;
}
public void setStatusId(Integer statusId) {
	this.statusId = statusId;
}
public Boolean getDeleted() {
	return deleted;
}
public void setDeleted(Boolean deleted) {
	this.deleted = deleted;
}
}
