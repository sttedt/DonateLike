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
import com.donate.like.service.MainService;

@Controller
public class AdminController {
	
	@Autowired 
	AdminService adminService;
	@Autowired
	MainService mainService;
		
	// 관리자 메인 페이지
 	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
 	public String adminMain( Model model) {
 		
 		return "adminMain";
 	}
 	//관리자 문의하기 불러오기
 	@RequestMapping(value = "/adminBoard", method = RequestMethod.GET)
 	public String adminBoard( Model model) {
 		
 		return "admin/adminBoard";
 		
 		
 	}
 	//관리자 기부내역 불러오기
	@RequestMapping(value="admin_Donate_detail", method = RequestMethod.GET)
	public String list(Model model, HttpSession httpSession, @RequestParam Map<String, Object> map, HttpServletRequest request) {
		String no = (String) httpSession.getAttribute("SID");
		List<Map<String, Object>> dList = adminService.donateList(no);
		model.addAttribute("list", dList);
		
		return "admin/admin_Donate_detail";
	}
	// 대상선정 추가
	@RequestMapping(value = "DonateLike_TargetSelection_insert", method = RequestMethod.GET)
	public String TargetSelectionInsert(Model model) {
		return "admin/DonateLike_TargetSelection_insert";
	}
	// 대상선정 추가
	@RequestMapping(value = "DonateLike_TargetSelection_insert", method = RequestMethod.POST)
	public String TargetSelectionInsert(@RequestParam("file") List<MultipartFile> img, @RequestParam Map<String, Object> map, Model model) throws Exception {
		
		adminService.TargetSelectionInsert(map, img);
		System.out.println("map : " + map);
		return "redirect:/DonateLike_TargetSelection";
	}
	// 대상선정 수정
	@RequestMapping(value = "DonateLike_TargetSelection_update", method = RequestMethod.GET)
	public String TargetSelectionUpdate(Model model, @RequestParam("TS_NO") int TS_NO) {
		model.addAttribute("DTSelectionOne", mainService.DTSelectionOne(TS_NO));
		return "admin/DonateLike_TargetSelection_update";
	}
	
	// 대상선정 수정 업데이트
	@RequestMapping(value ="DonateLike_TargetSelection_update", method = RequestMethod.POST)
	public String TargetSelectionUpdate(
			Model model, @RequestParam("TS_NO")int TS_NO,@RequestParam Map<String, Object> map, @RequestParam("file") List<MultipartFile> img) throws Exception {
		adminService.TargetSelectionUpdate(map, img);
		System.out.println("map : " + map);
		return "redirect:/DonateLike_TargetSelection_One?TS_NO="+TS_NO;
	}
	
	//대상수정 삭제
	@RequestMapping(value ="DonateLike_TargetSelection_delete", method = RequestMethod.GET)
	public String TargetSelectionDelete(Model model, @RequestParam("TS_NO")int TS_NO, @RequestParam Map<String, Object> map){
		adminService.TargetSelectionDelete(map);
		return "redirect:/DonateLike_TargetSelection";
	}
	
	

	
}
