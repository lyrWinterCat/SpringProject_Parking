package com.project.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.service.MailSendService;
import com.project.service.UserService;

import vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	MailSendService mailService;
	
	
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping(value= {"/naverSignUp","/naverLogin"})
	public String goNaverSign() {
		return VIEW_PATH+"user/naverLogin.jsp";
	}
	
	// 회원가입 버튼 클릭 시 회원가입.jsp로 이동
	@RequestMapping("/userSignUp")
	public String goUserSign() {
		return VIEW_PATH+"user/userSignUp.jsp";
	}
	
	// 회원가입 페이지에서 아이디 체크
	@RequestMapping("/userCheckId")
	@ResponseBody
	public HashMap<String,Object> checkId(String userId) {
		HashMap<String,Object> map = new HashMap<String,Object>(); 
		
		if(userService.checkId(userId)) {
			map.put("status", "not-ok");
		} else {
			map.put("status","ok");
		}
		return map;		
	}
	
	// 회원가입 페이지에서 닉네임 중복 체크
	@RequestMapping("/userCheckNick")
	@ResponseBody
	public HashMap<String,Object> checkNick(String userNick) {
		HashMap<String,Object> map = new HashMap<String,Object>(); 
		
		if(userService.checkNick(userNick)) {
			map.put("status", "not-ok");
		} else {
			map.put("status","ok");
		}
		return map;		
	}
	
	// 회원가입 페이지에서 이메일 인증번호 보내기
	@RequestMapping("/userEmailSend")
	@ResponseBody
	public String userEmailSend(String userEmail) {
		System.out.println("이메일 인증 요청 들어옴");
		System.out.println("이메일 인증 이메일 : "+userEmail);
		
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		
		String addr = "korea1parking2project3@gmail.com";
		
		String subject = "주차장 알리미 사이트 회원가입 이메일 인증코드입니다.";
		
		String body = "안녕하세요?\r\n주차장 알리미 사이트에 가입해 주셔서 감사합니다.\r\n 다음의 인증코드를 입력해주세요."+checkNum
				+"\r\n오늘도 안전한 운전이 되길 바랍니다!";
		
		mailService.sendEmail(userEmail, addr, subject, body);
		
		return "";		
	}
	
	//회원가입이 정상적으로 작동될 경우 로그인 페이지로 이동
	// 여기서 회원가입 userVO가 DB에 들어감
	@RequestMapping("/userSignOk")
	public String signUp(UserVO userVO) {
		userService.signUp(userVO);
		
		return VIEW_PATH+"user/userLogin.jsp";
	}	
	
	// 로그인 버튼 클릭 시 로그인 페이지로 이동
	@RequestMapping("/userLogin")
	public String goUserLogin() {		
		
		return VIEW_PATH+"user/userLogin.jsp";
	}
	
	// 로그인 성공시 loginHome.jsp로 이동 , 실패시 main.jsp로 이동
	// 여기서 로그인 판별(id와 pwd가 일치하는지)
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
	
	// 로그아웃시 세션 지워주기
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		//세션 지워주기
		HttpSession session = request.getSession();
		session.invalidate();
		return VIEW_PATH+"main.jsp";
	}
	
	// 로그인 때 설정한 session에 따라서 회원정보 받아서 수정
	@RequestMapping("/userUpdate")
	public String goUpdateUser(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		//session으로 id 받아서 해당 id의 userVO 받아오기
		String userId=(String)session.getAttribute("userId");
		List<UserVO> userVo =userService.getList(userId);
		model.addAttribute("list", userVo);
		return VIEW_PATH+"user/userUpdate.jsp";
	}
	
	// 회원 탈퇴 버튼 클릭시 탈퇴 페이지로 이동
	@RequestMapping("/userDelete")
	public String goDeleteUser() {
		return VIEW_PATH+"user/userDelete.jsp";
	}
	
	

	

}
