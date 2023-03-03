package com.growinted.controller;
import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.growinted.bean.ForgetPasswordBean;
import com.growinted.bean.LoginBean;
import com.growinted.bean.UpdatePasswordBean;
import com.growinted.bean.UserBean;
import com.growinted.dao.UserDao;
import com.growinted.service.EmailService;
import com.growinted.util.OtpGenerator;
//annotation
@Controller

public class SessionController {
	@Autowired
	UserDao userDao;
	@Autowired
	EmailService emailService;
	//jsp open
@GetMapping("/signup")
public String signup() {
	return "Signup";
}
@PostMapping("/saveuser")
public String saveuser(UserBean user) {
	System.out.println("Jai Hind...");
	System.out.println(user.getFirstName());
	System.out.println(user.getLastName());
	System.out.println(user.getEmail());
	System.out.println(user.getPassword());
	userDao.insertUser(user);
	return "Login";
}


@GetMapping("/login")
public String login() {
	return "Login";
}

@PostMapping("/authentication")
public String authentication(LoginBean login, Model model){
	System.out.println(login.getEmail());
	System.out.println(login.getPassword());
	UserBean userBean=userDao.authenticateUser(login);
	if(userBean== null) {
		//invaild
		model.addAttribute("error","invaild Credentials");
				return "Login";
			}
	else{
		if(userBean.getRole() == 1) {
				//admin
				return "redirect:/admindashboard";
			}
	        else if(userBean.getRole()== 2){
	        	//buyer
	        	return "redirect:/home";
	        }else {
	        	//vaild
	        	return "404";
	        }
	}
}

@GetMapping("/")
public String root() {
	return "Login";
}
@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
}
@PostMapping("/sendotpforforgetpassword")
public String sendOtpForForgetPassword(ForgetPasswordBean forgetPasswordBean,Model model) {
	System.out.println(forgetPasswordBean.getEmail());
	UserBean user= userDao.findUserByEmail(forgetPasswordBean);
	if(user== null) {
		//error
		model.addAttribute("error","Invaild Email");
		return "ForgetPassword";
		}
		else{
		//otp
			//generate otp
			// int otp =(int)(Math.random()*1000000);
			String otp =OtpGenerator.generateOTP(6);
			userDao.updateOtp(forgetPasswordBean.getEmail(),otp);

			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);

	return "redirect:/updatepasswordjspopen";
}
}
@GetMapping("/updatepasswordjspopen")
public String updatepasswordJspOpen() {
	return "UpdatePassword";
}
@PostMapping("/updatemypassword")
public String updateMyPassword(UpdatePasswordBean upBean) {
System.out.println(upBean.getEmail());
System.out.println(upBean.getPassword());
System.out.println(upBean.getOtp());
UserBean user=userDao.verifyOtpByEmail(upBean);
if(user==null) {
	return "UpdatePassword";
}
else {
	userDao.updateMyPasword(upBean);
    return "Login";
}
}
}