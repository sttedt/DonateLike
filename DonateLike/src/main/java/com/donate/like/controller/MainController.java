package com.donate.like.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
//	메인페이지
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main( Model model) {
		return "main";
	}
	
	@RequestMapping(value = "/DonateLike_Introduce", method = RequestMethod.GET)
	public String DonateLike_Introduce(Model model) {
		
		return "DonateLike_Introduce";
	}
}
