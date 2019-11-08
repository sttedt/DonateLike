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

import com.donate.like.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;

	// 게시글 목록 페이지
	@RequestMapping(value="DonateLike_Board", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("b_list", boardService.boardList());
		
		return "DonateLike_Board";
	}
	// 게시글 쓰기
	@RequestMapping(value="DonateLike_Board_insert", method = RequestMethod.GET)
	public String DonateLike_Board_insert(Model model,HttpSession httpSession, HttpServletRequest request) {
//		String no = (String) httpSession.getAttribute("SID");
//		System.out.println("no : " + no);
//		if(no==null) {
//			request.setAttribute("type", "error");
//			request.setAttribute("msg", "로그인이 필요합니다");
//			request.setAttribute("url", "login");
//			return "alert";
//		}
		return "DonateLike_Board_insert";
	}
	
	// 게시글 데이터베이스 저장
	@RequestMapping(value="DonateLike_Board_insert", method = RequestMethod.POST)
	public String DonateLike_Board_insert(@RequestParam Map<String, Object> map) {
		System.out.println(" map :" + map);
		boardService.boardInsert(map);
		
		return "redirect:DonateLike_Board";
	}

}
