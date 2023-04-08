package com.growinted.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.growinted.bean.ExpenseChartBean;
import com.growinted.dao.UserDao;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;

	@GetMapping("userdashboard")
	public String home(Model model) {

		Integer userId = 78;
		List<ExpenseChartBean> linechartData = userDao.getCategoryStats(userId);
		List<ExpenseChartBean> piechartData = userDao.getVendorStats(userId);

		model.addAttribute("linechartData", linechartData);
		model.addAttribute("piechartData", piechartData);
		return "UserDashboard";
	}
}
