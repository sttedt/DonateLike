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
	
	// 수혜자 목록페이지
	@RequestMapping(value="taker_list", method = RequestMethod.GET)
	public String taker_list_method(Model model) {
		model.addAttribute("t_list", takerManagementService.takerList());
		
		return "taker_list";
	}
	
	// 수혜자 수정 페이지로 가기위한 코드
	@RequestMapping(value="taker_update" , method = RequestMethod.GET)
	public String up(Model model, @RequestParam("TI_NO") int TI_NO, HttpSession httpSession, HttpServletRequest request) {
		model.addAttribute("taker_update", takerManagementService.taker_update(TI_NO));
		String no = (String) httpSession.getAttribute("SID");
		
		return "taker_update";
	}
	
	// 수혜자 수정 후 디비에 보내는 코드
	@RequestMapping(value="taker_update", method = RequestMethod.POST)
	public String up(@RequestParam Map<String, Object> map,
			Model model, @RequestParam("TI_NO") int TI_NO) {
		System.out.println(map);
		takerManagementService.takerUpdate(map);//데이터넘기기
		model.addAttribute("taker_update", takerManagementService.taker_update(TI_NO));// model객체를 이용해서, view로 데이터전달/ 넘길 데이터의 이름과 변수에 넣을 데이터값을 넣음, 그값을 뷰로 넘겨줌
		return "redirect:/taker_list";
		//redirect: 경로설정
	}
	
	// 수혜자 삭제 
	@RequestMapping(value="taker_delete" , method = RequestMethod.GET)
	public String del(@RequestParam Map<String, Object> map, 
			Model model,HttpServletRequest request, HttpSession httpSession) {
		takerManagementService.takerDelete(map);//데이터넘기기
//		model.addAttribute("b_list", boardService.boardList()); 위에 보드에서 board.jsp 화면에서 데이터까지 나오게 되는 값
		return "redirect:/taker_list";
		// 주소가 boardd?Brd_NO=815 에서 결과값이 board의 주소창으로 된다
	}
	
	
	

	
	
	
	
	
	
}
