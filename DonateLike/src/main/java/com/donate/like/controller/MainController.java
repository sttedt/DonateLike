package com.donate.like.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.donate.like.service.MainService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	@Autowired
	MainService mainService;
	
	
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
		//대상선정 목록 불러오기
		List<Map<String,Object>> list = mainService.DTSelectionList();
		model.addAttribute("s_list", list);
		return "DonateLike_TargetSelection";
	}
	// 대상선정 상세페이지
	@RequestMapping(value="DonateLike_TargetSelection_One")
	public String DonateLike_TargetSelection_One(Model model, @RequestParam("TS_NO") int TS_NO) {
		model.addAttribute("DTSelectionOne", mainService.DTSelectionOne(TS_NO));
		return "DonateSelection/DonateLike_TargetSelection_One";
	}
}
