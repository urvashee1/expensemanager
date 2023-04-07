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
	
List<ExpenseChartBean>linechartData=userDao.getCategoryStats();
List<ExpenseChartBean>piechartData=userDao.getVendorStats();

model.addAttribute("linechartData",linechartData);
model.addAttribute("piechartData",piechartData);
return "UserDashboard";
}
}
