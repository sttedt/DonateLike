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
//	기부니 좋아 소개
	@RequestMapping(value = "/DonateLike_Introduce", method = RequestMethod.GET)
	public String DonateLike_Introduce(Model model) {
		
		return "DonateLike_Introduce";
	}
//	기부니 좋아 목표와 비전
	@RequestMapping(value = "/DonateLike_purpose", method = RequestMethod.GET)
	public String DonateLike_purpose(Model model) {
		
		return "DonateLike_purpose";
	}
//	기부니 좋아 대상선정
	@RequestMapping(value = "/DonateLike_TargetSelection", method = RequestMethod.GET)
	public String DonateLike_TargetSelection(Model model) {
		
		return "DonateLike_TargetSelection";
	}
}
