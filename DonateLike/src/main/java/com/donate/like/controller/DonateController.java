package com.donate.like.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.donate.like.service.DonateService;

@Controller
public class DonateController {
	@Autowired
	DonateService donateService;
	// 후원하기 페이지
	@RequestMapping(value = "/Donate_apply", method = RequestMethod.GET)
	public String Donate_support(Model model, HttpSession httpSession, HttpServletRequest request) {
		String no = (String) httpSession.getAttribute("SID");
		
		if(no==null) {
			request.setAttribute("type", "error");
			request.setAttribute("msg", "로그인이 필요합니다");
			request.setAttribute("url", "login");
			return "bar/alert";
		}
		return "Donate_apply";
	}
	// 후원하기 페이지 내용 DB 저장
	@RequestMapping(value = "/Donate_apply", method = RequestMethod.POST)
	public String Donate_support(@RequestParam Map<String, Object> map, HttpSession httpSession) {
		String no = (String) httpSession.getAttribute("SID");
		System.out.println("map : " + map);
		map.put("ID", no);
		donateService.donateInsert(map);
		return "redirect:Donate_detail";
	}
	
	@RequestMapping(value="Donate_detail", method = RequestMethod.GET)
	public String list(Model model, HttpSession httpSession, @RequestParam Map<String, Object> map, HttpServletRequest request) {
		String no = (String) httpSession.getAttribute("SID");
		if(no==null) {
			request.setAttribute("type", "error");
			request.setAttribute("msg", "로그인이 필요합니다");
			request.setAttribute("url", "login");
			return "bar/alert";
		}
		List<Map<String, Object>> dList = donateService.donateList(no);
		model.addAttribute("list", dList);
		
		return "Donate_detail";
	}
}
