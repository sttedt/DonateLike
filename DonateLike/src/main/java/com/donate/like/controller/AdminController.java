package com.donate.like.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
//	 	관리자 페이지
	 	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	 	public String adminMain( Model model) {
	 		
	 		return "adminMain";
	 	}
}
