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
	String insertQuery = "insert into income (title,date,description,userId,accountTypeId,statusId,deleted) values (?,?,?,?,?,?,?) ";

	stmt.update(insertQuery, incomeBean.getTitle(),incomeBean.getDate(),incomeBean.getDescription(),incomeBean.getUserId(),incomeBean.getAccountTypeId(),incomeBean.getStatusId(),false);// insert //update //delete
	}

	public List<IncomeBean> getAllIncome() {

		String joinQuery = "select u.firstName,i.userId,a.accountType,i.accountTypeId,s.status,i.statusId,i.incomeId,i.title,i.date,i.description,i.deleted from users u, accounttype a,status s,income i where u.userId=i.userId and a.accountTypeId=i.accountTypeId and s.statusId=i.statusId and i.deleted=false";

		List<IncomeBean> list =  stmt.query(joinQuery, new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class));
		
		//c1 c2 c3 
		
		return list;
	}

	public void deleteIncome(Integer incomeId) {
		String updateQuery="update income set deleted = true where incomeId =?";
		stmt.update(updateQuery,incomeId);
	}
	public IncomeBean getIncomeById(Integer incomeId) {
		IncomeBean incomeBean =null;
		try {
			incomeBean=stmt.queryForObject("select i.* ,u.firstname, s.status, a.accounttype from income i,users u, status s,accounttype a where incomeId=? and i.userId=u.userId and i.statusId = s.statusId and i.accounttypeId=a.accounttypeId",new BeanPropertyRowMapper<IncomeBean>(IncomeBean.class),new Object[] {incomeId});
			}
		catch(Exception e) {
			System.out.println("incomeDao :: getIncomeById()");
	        System.out.println(e.getMessage());
		}
	    return incomeBean;
	}
}
