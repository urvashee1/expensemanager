package com.growinted.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.SubCategoryBean;

@Repository
public class SubCategoryDao {

	@Autowired
	JdbcTemplate stmt;
	public void addSubCategory(SubCategoryBean subcategoryBean) {
	String insertQuery = "insert into subcategory (categoryId,subCategoryName,deleted) values (?,?,?) ";

	stmt.update(insertQuery,subcategoryBean.getCategoryId(),subcategoryBean.getSubCategoryName(),false);// insert //update //delete
}

	public List<SubCategoryBean> getAllSubCategory() {

		String selectQuery = "select * from subcategory where deleted = false";

		List<SubCategoryBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
		
		//c1 c2 c3 
		
		return list;
	}
	public void deleteSubCategory(Integer subCategoryId) {
		String updateQuery="update subCategory set deleted = true where subCategoryId =?";
		stmt.update(updateQuery,subCategoryId);
	}
}
