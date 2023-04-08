package com.growinted.dao;

import java.time.LocalDate;

import java.util.Calendar;
import java.util.List;

//import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.ExpenseChartBean;
import com.growinted.bean.ProfileBean;

@Repository
public class AdminDao {

	// old Calander Class to get YY-MM-DD
//	Calendar c = Calendar.getInstance();
//	int d = c.get(Calendar.DATE);
//	int m = c.get(Calendar.MONTH) + 1;
//	int y = c.get(Calendar.YEAR);

	// updated CLASS to get YY-MM-DD
	// Current Date

	@Autowired
	JdbcTemplate stmt;

	public Integer getTotalExpenseCountForCurrentDate() {

		String countQuery = "select count(*) from expense where date like ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = yyy + "-0" + mmm + "-%";
		} else {
			today = yyy + "-" + mmm + "-%";
		}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public Integer getTotalUserCountForCurrentYear() {

		String countQuery = "select count(*) from users where year(createdAt)= ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int yyy = c.get(Calendar.YEAR);

		String today = yyy + "";// 2023

		System.out.println("CURRENT YEAR => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });
	}

	public Integer getSumOfExpenseAmountForCurrentDate() {

		String countQuery = "select sum(Amount) from expense where date like ?";
		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = yyy + "-0" + mmm + "-%";
		} else {
			today = yyy + "-" + mmm + "-%";
		}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public Integer getSumOfIncomeAmountForCurrentDate() {

		String countQuery = "select sum(Amount) from income where date like ?";
// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = yyy + "-0" + mmm;
		} else {
			today = yyy + "-" + mmm;
		}

		if(ddd < 10 ) {
			today = today + "-0"+ddd;
		}else {
			today = today + ddd;
		}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public Integer getTotalIncomeCountForCurrentDate() {

		String countQuery = "select count(*) from income where date like ?";

		// dd-mm-yyyy

		Calendar c = Calendar.getInstance();

		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);

		String today = "";

		if (mmm < 10) {
			today = yyy + "-0" + mmm + "-%";
		} else {
			today = yyy + "-" + mmm + "-%";
		}
		System.out.println("TODAY => " + today);

		return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

	}

	public List<ExpenseChartBean> getExpenseStats() {
		String selectQ = "select monthname(date) as month, sum(amount) as amount from expense where year(date)=2023 group by monthname(date), month(date) order by month(date)";
		return stmt.query(selectQ, new BeanPropertyRowMapper<ExpenseChartBean>(ExpenseChartBean.class));
	}

	public void updateImageUrl(ProfileBean profileBean) {
		stmt.update("update users set imageUrl = ? where userId = ?", profileBean.getImageUrl(),
				profileBean.getUserId());
	}
}
