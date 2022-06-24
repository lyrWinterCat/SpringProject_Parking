package com.project.controller.reviewB;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RBoardController {
	
	public static final String VIEW_PATH = "/WEB-INF/views/";
	
	@RequestMapping("/reviewB")
	public String goreviewB() {
		return VIEW_PATH + "review/reviewBoard.jsp";
	}
	
}
