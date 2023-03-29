package com.growinted.dao;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
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
				today = yyy + "-0" + mmm  + "-%" ;
			} else {
				today = yyy + "-" + mmm + "-%" ;
			}
			System.out.println("TODAY => " + today);

			return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

		}

		public Integer getTotalUserCountForCurrentYear() {

			String countQuery = "select count(*) from users where createdAt like ?";

			// dd-mm-yyyy

			Calendar c = Calendar.getInstance();

			int yyy = c.get(Calendar.YEAR);

			String today = "%-" + yyy;// 2023

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
				today = yyy + "-0" + mmm +   "-%" ;
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
		today = yyy + "-0" + mmm + "-%";
	} else {
		today = yyy + "-" + mmm + "-%";
	}
	System.out.println("TODAY => " + today);

	return stmt.queryForObject(countQuery, Integer.class, new Object[] { today });

}
}













