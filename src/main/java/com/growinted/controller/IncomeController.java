package com.growinted.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.growinted.bean.AccountTypeBean;
import com.growinted.bean.IncomeBean;
import com.growinted.bean.StatusBean;
import com.growinted.bean.UserBean;
import com.growinted.dao.AccountTypeDao;
import com.growinted.dao.IncomeDao;
import com.growinted.dao.StatusDao;
import com.growinted.dao.UserDao;
@Controller
public class IncomeController {
	@Autowired
	UserDao userDao;
	@Autowired
	AccountTypeDao accountTypeDao;
	@Autowired
	StatusDao statusDao;
	@Autowired
	IncomeDao incomeDao;
@GetMapping("/newincome")
public String newincome(Model model,HttpServletRequest request) {
	List<UserBean> list=userDao.getAllUser();
    List<AccountTypeBean> list1=accountTypeDao.getAllAccountType();
    List<StatusBean> list2=statusDao.getAllStatus();
    model.addAttribute("list",list);
    model.addAttribute("list1",list1);
	model.addAttribute("list2",list2);
	
	int userId=-1;
    //read all cookies from request
    String firstName="";
    Cookie c[]=request.getCookies();//jsEssionId userId octo firstName 
    for(Cookie x:c) {//jsessionid userId firstName
 	   if(x.getName().equals("userId")) {
 		   userId=Integer.parseInt(x.getValue());
 	   }
 	   if(x.getName().equals("firstName")) {
 		   firstName=x.getValue();
 		   }
    }
    System.out.println("userId ->"+userId);
    System.out.println("firstName->"+firstName);
	return "Income";
}
@PostMapping("/saveincome")
public String saveincome(IncomeBean incomeBean) {
	System.out.println(incomeBean.getTitle());
	System.out.println(incomeBean.getDate());
	System.out.println(incomeBean.getDescription());
	System.out.println(incomeBean.getUserId());
	System.out.println(incomeBean.getAccountTypeId());
	System.out.println(incomeBean.getStatusId());
	incomeDao.addIncome(incomeBean);
	return "redirect:/listincome";
}
@GetMapping("/listincome")
public String listIncome(Model model) {
	List<IncomeBean>listIncome=incomeDao.getAllIncome();
	model.addAttribute("listIncome",listIncome);
	return "ListIncome";
	
}
@GetMapping("/deleteincome/{incomeId}")
public String deleteincome(@PathVariable("incomeId") Integer incomeId) {
	incomeDao.deleteIncome(incomeId);
	return "redirect:/listincome";
}
@GetMapping("/viewincome/{incomeId}")
public String viewIncome(@PathVariable("incomeId") Integer incomeId,Model model) {
	IncomeBean incomeBean = incomeDao.getincomeById(incomeId);
	model.addAttribute("incomeBean",incomeBean);
	return "ViewIncome";
}
}
