package com.growinted.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.ForgetPasswordBean;
import com.growinted.bean.LoginBean;
import com.growinted.bean.UpdatePasswordBean;
import com.growinted.bean.UserBean;

@Repository
public class UserDao {
@Autowired
JdbcTemplate stmt;
//add customer --signup
public void insertUser(UserBean userBean) {
	String insertQuery="insert into users (firstName,lastName,email,password,role) values (?,?,?,?,?)";
	//role -> 2 for customer/buyer/user
	stmt.update(insertQuery,userBean.getFirstName(),userBean.getLastName(),userBean.getEmail(),userBean.getPassword(),2); //query execute
}
public UserBean authenticateUser(LoginBean loginBean) {
	try{
		String loginQuery = "select * from users where email=? and password=?";
			UserBean user= stmt.queryForObject(loginQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { loginBean.getEmail(),loginBean.getPassword()});
			return user;
}
			catch(Exception e) {
				System.out.println("SMW --> UserDao::autheticateUser()");
				System.out.println(e.getMessage());
			}
			return null;
}


public UserBean findUserByEmail(ForgetPasswordBean ForgetPasswordBean) {
try{
	String selectEmailQuery = "select * from users where email=?";
		UserBean user= stmt.queryForObject(selectEmailQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { ForgetPasswordBean.getEmail()});
		return user;
}
		catch(Exception e) {
			System.out.println("SMW --> UserDao::autheticateUser()");
			System.out.println(e.getMessage());
		}
		return null;
}
public void updateOtp(String email,String otp) {
	String updateOtpQuery = "update users set otp=? where email=?";
	stmt.update(updateOtpQuery,otp,email);
}
public void updateMyPasword(UpdatePasswordBean upBean) {
	String updateQuery="update users set password=?,otp=? where email=?";
	stmt.update(updateQuery,upBean.getPassword(),"",upBean.getEmail());
}
public UserBean verifyOtpByEmail(UpdatePasswordBean upBean) {
	try {
		String otpQuery="select * from users where email=? and otp=?";
	UserBean user=stmt.queryForObject(otpQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] { upBean.getEmail(),upBean.getOtp()});
return user;
	}
	catch(Exception e) {
		System.out.println("SWM -->UserDao::verifyOtpByEmail()");
		System.out.println(e.getMessage());
     }
return null;
}
public List<UserBean> getAllUser() {

	String selectQuery = "select * from users";

	List<UserBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class));
	
	//c1 c2 c3 
	
	return list;
}
public UserBean getUserByEmail(String email) {
	String selectQuery="select * from users where email=?";
	try {
		return stmt.queryForObject(selectQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class),new Object[] {email});
	}
	catch(Exception e) {
		System.out.println(e.getMessage());
	}
    return null;
}
}