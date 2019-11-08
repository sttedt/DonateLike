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
	
	//로그인
	@RequestMapping(value = "login", method = RequestMethod.GET)
	// param은 map을 받는다
	public String login(Model model) {
		return "login";
	}
	//로그인 데이터 조회후 처리
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Model model, @RequestParam Map<String, Object> map, HttpSession httpSession,
			HttpServletRequest request, @RequestParam("pw") String pw) {
		String MD_PW = EncryptionClass.convertiMD5(pw);
		map.put("pw", MD_PW);
		System.out.println("map : " + map);
		
		Map<String, Object> map2 = memberService.loginSelect(map);
		try {
			if (map2 != null) {
				httpSession.setAttribute("SID", map.get("id"));
				request.setAttribute("type", "success");
				request.setAttribute("msg", "로그인성공");
				request.setAttribute("url", "main");
				return "bar/alert";
			}
		} catch (Exception e) {
			return "redirect:login";
		}
		request.setAttribute("type", "error");
		request.setAttribute("msg", "로그인실패");
		request.setAttribute("url", "login");
		return "bar/alert";
	}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpServletRequest request, HttpSession httpsession) {
		httpsession.invalidate(); // 세션삭제

		request.setAttribute("type", "success");
		request.setAttribute("msg", "로그아웃");
		request.setAttribute("url", "main");
		return "bar/alert";
	}
}
