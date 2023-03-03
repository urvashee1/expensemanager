package com.growinted.controller;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.growinted.bean.CategoryBean;
import com.growinted.bean.SubCategoryBean;
import com.growinted.dao.CategoryDao;
import com.growinted.dao.SubCategoryDao;

@Controller
public class SubCategoryController {
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subcategoryDao;
	@GetMapping("/newsubcategory") // url--browser
	public String newSubCategory(Model model) { // method
//
		List<CategoryBean> list=categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "NewSubCategory";// jsp--open
	}
@PostMapping("/savesubcategory")
	public String saveSubCategory(SubCategoryBean subcategoryBean) {
		System.out.println(subcategoryBean.getSubCategoryName()); // categoryName;
		System.out.println(subcategoryBean.getCategoryId());
		subcategoryDao.addSubCategory(subcategoryBean);
		return "NewCategory";

}
@GetMapping("/listsubcategories")
public String listSubCategories(Model model) {

	// pull all category from db-table
	List<SubCategoryBean> list = subcategoryDao.getAllSubCategory();
	model.addAttribute("list",list);
	return "ListSubCategory";
}
@GetMapping("/deletesubcategory/{subCategoryId}")
public String deletesubCategory(@PathVariable("subCategoryId") Integer subCategoryId) {
	subcategoryDao.deleteSubCategory(subCategoryId);
	return "redirect:/listsubcategories";
}
}