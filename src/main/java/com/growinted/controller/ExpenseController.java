package com.growinted.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.growinted.bean.AccountTypeBean;
import com.growinted.bean.CategoryBean;
import com.growinted.bean.ExpenseBean;
import com.growinted.bean.StatusBean;
import com.growinted.bean.SubCategoryBean;
import com.growinted.bean.VendorBean;
import com.growinted.dao.AccountTypeDao;
import com.growinted.dao.CategoryDao;
import com.growinted.dao.ExpenseDao;
import com.growinted.dao.StatusDao;
import com.growinted.dao.SubCategoryDao;
import com.growinted.dao.UserDao;
import com.growinted.dao.VendorDao;

@Controller
public class ExpenseController {
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subcategoryDao;
	@Autowired
	VendorDao vendorDao;
	@Autowired
	AccountTypeDao accountTypeDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	ExpenseDao expenseDao;
@GetMapping("/newexpense")
public String newExpense(Model model) { // method
//
        List<CategoryBean> list1=categoryDao.getAllCategory();
        List<SubCategoryBean> list2=subcategoryDao.getAllSubCategory();
        List<VendorBean> list3=vendorDao.getAllVendor();
        List<AccountTypeBean> list4=accountTypeDao.getAllAccountType();
        List<StatusBean> list5=statusDao.getAllStatus();
		model.addAttribute("list1",list1);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		model.addAttribute("list4",list4);
		model.addAttribute("list5",list5);
	return "Expense";
}
@PostMapping("/saveexpense")
public String saveexpense(ExpenseBean expenseBean) {
	System.out.println(expenseBean.getTitle());
	System.out.println(expenseBean.getDate());
	System.out.println(expenseBean.getDescription());
	System.out.println(expenseBean.getUserId());
	System.out.println(expenseBean.getCategoryId());
	System.out.println(expenseBean.getSubCategoryId());
	System.out.println(expenseBean.getVendorId());
	System.out.println(expenseBean.getAccountTypeId());
	System.out.println(expenseBean.getStatusId());
	System.out.println(expenseBean.getAmount());
	expenseDao.addExpense(expenseBean);
	return "Expense";
}
@GetMapping("/listexpense")
public String listExpense(Model model) {
	List<ExpenseBean>listExpense=expenseDao.getAllExpense();
	model.addAttribute("listExpense",listExpense);
	return "ListExpense";
	
}
@GetMapping("/deleteexpense/{expenseId}")
public String deleteexpense(@PathVariable("expenseId") Integer expenseId) {
	expenseDao.deleteExpense(expenseId);
	return "redirect:/listexpense";
}
@GetMapping("/viewexpense/{expenseId}")
public String viewExpense(@PathVariable("expenseId") Integer expenseId,Model model) {
	ExpenseBean expenseBean = expenseDao.getExpenseById(expenseId);
	model.addAttribute("expenseBean",expenseBean);
	return "ViewExpense";
}
}

