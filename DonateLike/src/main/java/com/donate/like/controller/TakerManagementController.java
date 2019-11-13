package com.donate.like.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.donate.like.service.TakerManagementService;

@Controller
public class TakerManagementController {
	@Autowired
	TakerManagementService takerManagementService;
	
	// 수혜자 등록
	@RequestMapping(value = "taker_insert", method = RequestMethod.GET)
	public String TakerManagement(Model model) {
		
		return "taker_insert";
	}
	
	// 수혜자 데이터 디비로 보내기
	@RequestMapping(value="taker_insert", method = RequestMethod.POST)
	public String taker_info_send(@RequestParam Map<String, Object> map) {
		System.out.println("map:"+map);
		takerManagementService.takerInsert(map);
		
		return "redirect:main";
	}
	
	// 게시글 목록 페이지
	@RequestMapping(value="taker_list", method = RequestMethod.GET)
	public String taker_list_method(Model model) {
		model.addAttribute("t_list", takerManagementService.takerList());
		
		return "taker_list";
	}
	
	// 게시글 수정페이지로 가기위한 코드
	@RequestMapping(value="taker_update" , method = RequestMethod.GET)
	public String up(Model model, @RequestParam("TI_NO") int TI_NO, HttpSession httpSession, HttpServletRequest request) {
		model.addAttribute("taker_update", takerManagementService.taker_update(TI_NO));
		String no = (String) httpSession.getAttribute("SID");
		System.out.println("no : " + no);
		
		return "taker_update";
	}
	
	
	
	

	
	
	
	
	
	
}
