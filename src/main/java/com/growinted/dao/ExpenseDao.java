package com.growinted.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.ExpenseBean;


@Repository
public class ExpenseDao {
@Autowired
JdbcTemplate stmt;
public void addExpense(ExpenseBean expenseBean) {
String insertQuery = "insert into expense (title,date,description,userId,categoryId,subCategoryId,vendorId,accountTypeId,statusId,amount,deleted) values (?,?,?,?,?,?,?,?,?,?,?) ";

stmt.update(insertQuery, expenseBean.getTitle(),expenseBean.getDate(),expenseBean.getDescription(),expenseBean.getUserId(),expenseBean.getCategoryId(),expenseBean.getSubCategoryId(),expenseBean.getVendorId(),expenseBean.getAccountTypeId(),expenseBean.getStatusId(),expenseBean.getAmount(),false);// insert //update //delete
}

public List<ExpenseBean> getAllExpense() {


	String joinQuery = "select e.expenseId,u.firstName,c.categoryName,sc.subCategoryName,v.vendorName,a.accountType,s.status,e.userId,e.categoryId,e.subCategoryId,e.vendorId,e.accountTypeId,e.statusId,e.title,e.date,e.description,e.amount,e.deleted from users u,category c, subcategory sc,vendor v,accounttype a,status s,expense e where u.userId=e.userId and c.categoryId=e.categoryId and sc.subCategoryId=e.subCategoryId and v.vendorId=e.vendorId and a.accountTypeId=e.accountTypeId and s.statusId=e.statusId and e.deleted=false";

	return stmt.query(joinQuery, new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class));
	
	//c1 c2 c3 
	
}

public void deleteExpense(Integer expenseId) {
	String updateQuery="update expense set deleted = true where expenseId =?";
	stmt.update(updateQuery,expenseId);
}
public ExpenseBean getExpenseById(Integer expenseId) {
	ExpenseBean expenseBean =null;
	try {
		expenseBean=stmt.queryForObject("select * from expense where expenseId=?",new BeanPropertyRowMapper<ExpenseBean>(ExpenseBean.class),new Object[] {expenseId});
		}
	catch(Exception e) {
		System.out.println("ExpenseDao :: getExpenseById()");
        System.out.println(e.getMessage());
	}
    return expenseBean;
}
}

