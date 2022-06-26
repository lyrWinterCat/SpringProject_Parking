package com.project.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/userTest")
	public void test() {
		userService.getList();
	}
	
	
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping(value= {"/naverSignUp","/naverLogin"})
	public String goNaverSign() {
		return VIEW_PATH+"user/naverLogin.jsp";
	}
	
	
	@RequestMapping("/userSignUp")
	public String goUserSign() {
		return VIEW_PATH+"user/userSignUp.jsp";
	}
	
	@RequestMapping("/userSignOk")
	public String signUp() {
		
		
		return VIEW_PATH+"main.jsp";
	}
	
	
	
	@RequestMapping("/userLogin")
	public String loginUser() {
		return VIEW_PATH+"user/userLogin.jsp";
	}
	
	@RequestMapping("/loginOk")
	public String okLogin() {
		return VIEW_PATH+"loginHome.jsp";
	}

	
	@RequestMapping("/userUpdate")
	public String updateUser() {
		return VIEW_PATH+"user/userUpdate.jsp";
	}
	@RequestMapping("/userDelete")
	public String deleteUser() {
		return VIEW_PATH+"user/userDelete.jsp";
	}
	
	

	

}
