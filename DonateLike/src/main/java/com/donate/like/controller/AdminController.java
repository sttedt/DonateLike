package com.donate.like.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.donate.like.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired 
	AdminService adminService;
		
	// 관리자 메인 페이지
	 	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	 	public String adminMain( Model model) {
	 		
	 		return "adminMain";
	 	}
	 	@RequestMapping(value = "/adminBoard", method = RequestMethod.GET)
	 	public String adminBoard( Model model) {
	 		
	 		return "adminBoard";
	 	}
	 	
	 	
}
