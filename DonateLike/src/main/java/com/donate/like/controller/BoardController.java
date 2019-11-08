package com.donate.like.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

}
