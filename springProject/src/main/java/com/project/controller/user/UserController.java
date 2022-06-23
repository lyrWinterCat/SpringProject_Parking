package com.project.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping("/userSignUp")
	public String goUserSign() {
		return VIEW_PATH+"user/userSignUp.jsp";
	}
	
	@RequestMapping("/userLogin")
	public String loginUser() {
		return VIEW_PATH+"user/userLogin.jsp";
	}
		
	
	
	@RequestMapping("/userLogout")
	public String logoutUser() {
		return VIEW_PATH+"user/userLogout.jsp";
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
