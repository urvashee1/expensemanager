package com.growinted.controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.growinted.bean.ExpenseChartBean;
import com.growinted.bean.ProfileBean;
import com.growinted.dao.AdminDao;

@Controller
public class AdminController{
	@Autowired
	AdminDao adminDao;
	@GetMapping("/admindashboard")
	public String adminDashboaard(Model model) {
		System.out.println("Inside admindashboard--url-metho--");
		//totalOrderCount-Today
		int totalUsers =  adminDao.getUsersCount();
		int totalExpenseCount = adminDao.getExpenseCount();
		int totalExpenseDaily = adminDao.getAmmountOfExpennseDaily();
		int totalExpenseMonthly = adminDao.getAmmountOfExpenseMonthly();
		int ratioUsersMonthly = adminDao.getUserRatioMonthly();
		int ratioTransactionMonthly = adminDao.getRatioOfTransaction();
		Double ratioExpenseDaily = adminDao.getExpenseRatioForPeviousDay();
		Double ratioExpenseMonthly = adminDao.getExpenseRatioForPeviousMonth();
	    List<ExpenseChartBean>chartData=adminDao.getExpenseStats();
	    
		model.addAttribute("NumberOfUsers", totalUsers);
		model.addAttribute("NumberOfMonthlyExpenses", totalExpenseCount);
		model.addAttribute("TodayExpense", totalExpenseDaily);
		model.addAttribute("MonthlyExpense", totalExpenseMonthly);
		model.addAttribute("ratioExpenseDaily", ratioExpenseDaily);
		model.addAttribute("ratioExpenseMonthly", ratioExpenseMonthly);
		model.addAttribute("ratioUsersMonthly", ratioUsersMonthly);
		model.addAttribute("ratioTransactionMonthly", ratioTransactionMonthly);
		model.addAttribute("chartData",chartData);

		return "AdminDashboard";
	}	
	@GetMapping("myprofile")
	public String myprofile() {
		return "MyProfile";
	}
	@PostMapping("/saveprofilepic")
	public String saveProfilePic(ProfileBean profileBean) {
		System.out.println(profileBean.getUserId());
		System.out.println(profileBean.getProfileImg().getOriginalFilename());
		try {
			File userDir = new File("C:\\sts\\ExpenseManager\\src\\main\\resources\\static\\assets\\profiles",
					profileBean.getUserId() + "");
			if (userDir.exists() == false) {
				userDir.mkdir();
			}
			File file = new File(userDir, profileBean.getProfileImg().getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, profileBean.getProfileImg().getBytes());
			profileBean.setImageUrl("assets/profiles/" + profileBean.getUserId() + "/"
					+ profileBean.getProfileImg().getOriginalFilename());
			
			adminDao.updateImageUrl(profileBean);
			
		} catch (Exception e) {

		}
		return "redirect:/myprofile";
	}
	
}


