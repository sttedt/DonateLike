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
		String no = (String) httpSession.getAttribute("SID");
		System.out.println("no : " + no);
		if(no==null) {
			request.setAttribute("type", "error");
			request.setAttribute("msg", "로그인이 필요합니다");
			request.setAttribute("url", "login");
			return "alert";
		}
		return "DonateLike_Board_insert";
	}
	
	// 게시글 데이터베이스 저장
	@RequestMapping(value="DonateLike_Board_insert", method = RequestMethod.POST)
	public String DonateLike_Board_insert(@RequestParam Map<String, Object> map) {
		System.out.println(" map :" + map);
		boardService.boardInsert(map);
		
		return "redirect:DonateLike_Board";
	}
	
	// 게시글 상세페이지
		@RequestMapping(value="board_detail")
		public String show(Model model, @RequestParam("B_NO") int B_NO) {
			model.addAttribute("detail", boardService.boardOne(B_NO));
			return "board_detail";
	}
		
	// 게시글 수정페이지
	@RequestMapping(value="board_update_ready" , method = RequestMethod.GET)
	public String up(Model model, @RequestParam("B_NO") int B_NO, HttpSession httpSession, HttpServletRequest request) {
		model.addAttribute("board_update_ready", boardService.board_update_ready(B_NO));
		String no = (String) httpSession.getAttribute("SID");
		
		if(no==null) {
			request.setAttribute("type", "error");
			request.setAttribute("msg", "로그인이 필요합니다");
			request.setAttribute("url", "login");
			return "alert";
		}
		return "board_update";
	}
	
	// 게시글 수정 후 디비에 보내는 코드
	@RequestMapping(value="board_update_ready", method = RequestMethod.POST)
	public String up(@RequestParam Map<String, Object> map,
			Model model, @RequestParam("B_NO") int B_NO) {
		boardService.boardUpdate(map);//데이터넘기기
		model.addAttribute("board_update_ready", boardService.board_update_ready(B_NO));// model객체를 이용해서, view로 데이터전달/ 넘길 데이터의 이름과 변수에 넣을 데이터값을 넣음, 그값을 뷰로 넘겨줌
		return "redirect:/board_detail?B_NO="+B_NO;
		//redirect: 경로설정
	}
	
	// 게시글 삭제 
	@RequestMapping(value="board_delete" , method = RequestMethod.GET)
	public String del(@RequestParam Map<String, Object> map, 
			Model model,HttpServletRequest request, HttpSession httpSession) {
		boardService.boardDelete(map);//데이터넘기기
//			model.addAttribute("b_list", boardService.boardList()); 위에 보드에서 board.jsp 화면에서 데이터까지 나오게 되는 값

		String no = (String) httpSession.getAttribute("SID");
		System.out.println("no : " + no);
		if(no==null) {
			request.setAttribute("type", "error");
			request.setAttribute("msg", "로그인이 필요합니다");
			request.setAttribute("url", "login");
			return "alert";
		}
		return "redirect:/DonateLike_Board";
		// 주소가 boardd?Brd_NO=815 에서 결과값이 board의 주소창으로 된다
	}
}
