package com.growinted.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.IncomeBean;
@Repository
public class IncomeDao {
	@Autowired
	JdbcTemplate stmt;
	public void addIncome(IncomeBean incomeBean) {
	String insertQuery = "insert into income (title,date,description,accountTypeId,statusId,deleted) values (?,?,?,?,?,?) ";

	stmt.update(insertQuery, incomeBean.getTitle(),incomeBean.getDate(),incomeBean.getDescription(),incomeBean.getAccountTypeId(),incomeBean.getStatusId(),false);// insert //update //delete
	}

	public List<IncomeBean> getAllIncome() {

		String selectQuery = "select * from income where deleted = false";

		List<IncomeBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class));
		
		//c1 c2 c3 
		
		return list;
	}

	public void deleteIncome(Integer incomeId) {
		String updateQuery="update income set deleted = true where incomeId =?";
		stmt.update(updateQuery,incomeId);
	}
	public IncomeBean getincomeById(Integer incomeId) {
		IncomeBean incomeBean =null;
		try {
			incomeBean=stmt.queryForObject("select * from income where incomeId=?",new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class),new Object[] {incomeId});
			}
		catch(Exception e) {
			System.out.println("incomeDao :: getincomeById()");
	        System.out.println(e.getMessage());
		}
	    return incomeBean;
	}
}
