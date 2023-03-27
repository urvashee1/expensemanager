package com.growinted.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.growinted.dao.AdminDao;

@Controller
public class AdminController{
	@Autowired
	AdminDao adminDao;
	@GetMapping("/admindashboard")
	public String adminDashboaard(Model model) {
		System.out.println("Inside admindashboard--url-metho--");
		//totalOrderCount-Today
		Integer totalExpenseCount=adminDao.getTotalExpenseCountForCurrentDate();
		Integer totalUserCount=adminDao.getTotalUserCountForCurrentYear();
		Integer sumOfExpenseAmount=adminDao.getSumOfExpenseAmountForCurrentDate();
		Integer sumOfIncomeAmount=adminDao.getSumOfIncomeAmountForCurrentDate();
		model.addAttribute("totalTranscation",totalExpenseCount);
		model.addAttribute("totalExpense",sumOfExpenseAmount);
		model.addAttribute("totalIncome",sumOfIncomeAmount);
		model.addAttribute("totalUsers",totalUserCount);
		return "AdminDashboard";
	}	
}


