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
	public String adminDashboard(Model model) {
		System.out.println("Inside admindashboard--url-metho--");
		//totalOrderCount-Today
		
		Integer totalExpenseCount=adminDao.getTotalExpenseCountForCurrentDate();
		Integer totalUserCount=adminDao.getTotalUserCountForCurrentYear();
		System.out.println("totaluser " +totalUserCount);
		Integer sumOfExpenseAmount=adminDao.getSumOfExpenseAmountForCurrentDate();
		Integer sumOfIncomeAmount=adminDao.getSumOfIncomeAmountForCurrentDate();
        List<ExpenseChartBean>chartData=adminDao.getExpenseStats();
	    
	    model.addAttribute("totalTranscation",totalExpenseCount);
		model.addAttribute("totalExpense",sumOfExpenseAmount);
		model.addAttribute("totalIncome",sumOfIncomeAmount);
		model.addAttribute("totalUsers",totalUserCount);
		model.addAttribute("chartData",chartData);
		return "AdminDashboard";
	}	
	@GetMapping("myprofile")
	public String myprofile() {
		return "MyProfile";
	}
	@PostMapping("/saveprofilepic")
	public String saveProfilePic(ProfileBean profileBean) {
		System.out.println("--->"+profileBean.getUserId());
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
			//e.printStackTrace();
		}
		return "redirect:/myprofile";
	}
	
}


