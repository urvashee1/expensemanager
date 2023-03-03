package com.growinted.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class AdminController {
	@GetMapping("/admindashboard")
	public String adminDashboard() {
		System.out.println("Inside admindashboard --url--metho--");
		return "AdminDashboard";
}
}