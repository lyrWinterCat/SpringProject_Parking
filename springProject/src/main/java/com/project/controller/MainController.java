package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping(value = {"/","/parking"}, method = RequestMethod.GET)
	public String goMain() {		
		return VIEW_PATH+"main.jsp";
	}
	
}
