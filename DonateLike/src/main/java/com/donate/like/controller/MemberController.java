package com.donate.like.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.donate.like.md5.EncryptionClass;
import com.donate.like.service.MemberService;


@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	//회원가입
	@RequestMapping(value = "join", method = RequestMethod.GET)
	// param은 map을 받는다
	public String join(Model model) {
		return "join";
	}
	
	// 회원가입 정보
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(@RequestParam Map<String, Object> map, @RequestParam("DM_PW") String DM_PW) {
		System.out.println("map : " + map);
		String pw = EncryptionClass.convertiMD5(DM_PW);
		map.put("DM_PW", pw);
		memberService.joinInsert(map);
//		memberService.phoneCheckDelete(map);
//		memberService.deleteAuth(map);
		return "main";
	}
	
	
	
	
	

	
	
	
	
}
