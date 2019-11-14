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
import org.springframework.web.multipart.MultipartFile;

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
 	
	@RequestMapping(value="admin_Donate_detail", method = RequestMethod.GET)
	public String list(Model model, HttpSession httpSession, @RequestParam Map<String, Object> map, HttpServletRequest request) {
		String no = (String) httpSession.getAttribute("SID");
		List<Map<String, Object>> dList = adminService.donateList(no);
		model.addAttribute("list", dList);
		
		return "admin_Donate_detail";
	}
	
	@RequestMapping(value = "DonateLike_TargetSelection_update", method = RequestMethod.GET)
	public String store(Model model) {
		return "DonateLike_TargetSelection_update";
	}

	@RequestMapping(value = "DonateLike_TargetSelection_update", method = RequestMethod.POST)
	public String storeUp(@RequestParam("file") List<MultipartFile> img, @RequestParam Map<String, Object> map, Model model, @RequestParam("tag_end") String tag_end) throws Exception {
		
		map.put("hash", tag_end);
		
		System.out.println("map : " + map);
		adminService.takerInsert(map, img);
		return "redirect:/home";
	}
}
