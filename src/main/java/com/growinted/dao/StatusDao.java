package com.growinted.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.growinted.bean.StatusBean;
@Repository
public class StatusDao {

	@Autowired
	JdbcTemplate stmt;
	public void addStatus(StatusBean statusbean) {
	String insertQuery = "insert into status (status,deleted) values (?,?) ";

	stmt.update(insertQuery, statusbean.getStatus(),false);// insert //update //delete
}

public List<StatusBean> getAllStatus() {

	String selectQuery = "select * from status where deleted = false";

	List<StatusBean> list5 =  stmt.query(selectQuery, new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
	
	//c1 c2 c3 
	
	return list5;
}

public void deleteStatus(Integer statusId) {
	String updateQuery="update status set deleted = true where statusId =?";
	stmt.update(updateQuery,statusId);
}
}
