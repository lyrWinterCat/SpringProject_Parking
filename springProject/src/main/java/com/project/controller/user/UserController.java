package com.project.controller.user;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.service.UserService;

import vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	
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
	public String signUp(UserVO userVO) {
		userService.signUp(userVO);
		
		return VIEW_PATH+"user/userLogin.jsp";
	}	
	
	@RequestMapping("/userLogin")
	public String goUserLogin() {		
		
		return VIEW_PATH+"user/userLogin.jsp";
	}
	
	@RequestMapping("/loginOk")
	public ModelAndView okLogin(String userId, String userPwd, HttpServletRequest request, Model model) {
		HashMap<String,String> userMap = new HashMap<String, String>();
		userMap.put("userId", userId);
		userMap.put("userPwd",userPwd);
		ModelAndView mv = new ModelAndView();
		if(userService.login(userMap)==1) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", userId);
			
			List<UserVO> userVo =userService.getList(userId);
			model.addAttribute("list", userVo);
			mv.setViewName("/WEB-INF/views/loginHome.jsp");
			return mv;			
		};
		mv.setViewName("/WEB-INF/views/main.jsp");
		return mv;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		//세션 지워주기
		HttpSession session = request.getSession();
		session.invalidate();
		return VIEW_PATH+"main.jsp";
	}
	
	
	@RequestMapping("/userUpdate")
	public String goUpdateUser(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		//session으로 id 받아서 해당 id의 userVO 받아오기
		String userId=(String)session.getAttribute("userId");
		List<UserVO> userVo =userService.getList(userId);
		model.addAttribute("list", userVo);
		return VIEW_PATH+"user/userUpdate.jsp";
	}
	
	
	@RequestMapping("/userDelete")
	public String goDeleteUser() {
		return VIEW_PATH+"user/userDelete.jsp";
	}
	
	

	

}
