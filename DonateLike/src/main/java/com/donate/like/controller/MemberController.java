package com.donate.like.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	//회원가입 페이지 띄우기
	@RequestMapping(value = "join", method = RequestMethod.GET)
	// param은 map을 받는다
	public String join(Model model) {
		return "join";
	}
	
	// 회원가입 정보 보내기
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
	
	//로그인 페이지
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
	
	// 회원정보 확인
	@RequestMapping(value = "profile_check", method = RequestMethod.GET)
	public String profile_check_get(Model model, HttpSession httpsession) {
		return "profile_check";
	}
	
	@RequestMapping(value = "profile_check", method = RequestMethod.POST)
	public String profile_check_post(Model model, @RequestParam Map<String, Object> map,
			@RequestParam("pw") String pw) {
		String MD_PW = EncryptionClass.convertiMD5(pw);
		map.put("pw", MD_PW);
		System.out.println("map : " + map);
		
		Map<String, Object> data = memberService.loginSelect(map);
		if (data == null) {
			return "redirect:/profile_check";
		} else {
			return "redirect:/profile";
		}
	}
	
	@RequestMapping(value = "profile")
	public String show(Model model, HttpSession ss) {
		String DM_ID = (String) ss.getAttribute("SID");
		model.addAttribute("pro", memberService.profile(DM_ID));
		return "profile";
	}
	
	
	// 회원정보 수정페이지로 가기
	@RequestMapping(value = "profile_update", method = RequestMethod.GET)
	public String up(Model model, @RequestParam("DM_ID") String DM_ID) {

		model.addAttribute("profile_update", memberService.profile_update(DM_ID));
		return "profile_update";
	}
	
	// 회원정보 수정 데이터를 디비로 보내기
	@RequestMapping(value = "profile_update", method = RequestMethod.POST)
	public String up(@RequestParam Map<String, Object> map, Model model, @RequestParam("DM_ID2") String DM_ID,
			@RequestParam("pw") String pw) {
		String MD_PW = EncryptionClass.convertiMD5(pw);

		map.put("pw", MD_PW);
		System.out.println("map : " + map);
		memberService.memberUpdate(map);// 데이터넘기기
		model.addAttribute("profile_update", memberService.profile_update(DM_ID));// model객체를 이용해서, view로 데이터전달/ 넘길 데이터의 이름과 변수에
																		 // 넣을 데이터값을 넣음, 그값을 뷰로 넘겨줌
		
		return "redirect:/profile?DM_ID=" + DM_ID;
		// redirect: 경로설정
	}
	
	// 아이디 찾기 폼
	@RequestMapping(value = "find_id_form", method = RequestMethod.GET)
	// param은 map을 받는다
	public String find_id_form(Model model) {
		return "find_id_form";
	}
		
	// 아이디 찾기
	@RequestMapping(value = "find_id_form", method = RequestMethod.POST)
	public String find_id(HttpServletResponse response, @RequestParam("email") String email, Model md)
			throws Exception {
		md.addAttribute("id", memberService.find_id(response, email));
		System.out.println("email : " + email);
		return "find_id";
	}
		
	
}
