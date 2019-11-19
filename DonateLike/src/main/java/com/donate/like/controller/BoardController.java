package com.donate.like.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.donate.like.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;

	// 게시글 목록 페이지
	@RequestMapping(value="DonateLike_Board", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("b_list", boardService.boardList());
		
		return "board/DonateLike_Board";
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
		return "board/DonateLike_Board_insert";
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
		List<Map<String, Object>> rList = boardService.reviewList(B_NO);
		model.addAttribute("r_list", rList);
		System.out.println("rlist:"+ rList);
		System.out.println("B_NO : " + B_NO);
		return "board/board_detail";
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
		return "board/board_update";
	}
	
	
	// 게시글 수정 후 디비에 보내는 코드
	@RequestMapping(value="board_update_ready", method = RequestMethod.POST)
	public String up(@RequestParam Map<String, Object> map,
			Model model, @RequestParam("B_NO") int B_NO) {
		boardService.boardUpdate(map);//데이터넘기기
		// model객체를 이용해서, view로 데이터전달/ 넘길 데이터의 이름과 변수에 넣을 데이터값을 넣음, 그값을 뷰로 넘겨줌
		model.addAttribute("board_update_ready", boardService.board_update_ready(B_NO));
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
	
	// 리뷰 쓰기 페이지 불러오기
	@RequestMapping(value="review_write", method = RequestMethod.GET)
	public String rev(Model model,HttpSession httpSession, HttpServletRequest request, 
			 @RequestParam("B_NO") int B_NO ) {
		
		String no = (String) httpSession.getAttribute("SID");
		System.out.println("no : " + no);
		model.addAttribute("detail", boardService.reviewOne(B_NO));
		
		return "review/review_write";
	}
	
	// 리뷰 데이터를 디비에 보내기
	@RequestMapping(value="review_write", method = RequestMethod.POST)
	public String re(@RequestParam Map<String, Object> map, @RequestParam("B_NO") int B_NO){
		map.put("B_NO", B_NO);
		boardService.reviewInsert(map);
		return "redirect:/board_detail?B_NO="+B_NO;
	}
	
	// 리뷰 수정
	@RequestMapping(value="review_update", method = RequestMethod.GET)
	public String reviewu_get(Model model, @RequestParam Map<String, Object> map
			, HttpSession httpSession, HttpServletRequest request) {
		Map<String, Object> tmp = boardService.getReview(map);

		System.out.println("map :"+map);
		System.out.println("tmp:"+tmp);
		model.addAttribute("data", tmp);
		return "review/review_update";
	}
	
	// 리뷰 수정데이터디비 보내기
	@RequestMapping(value="review_update", method = RequestMethod.POST)
	public String reviewu_post( @RequestParam Map<String, Object> map, @RequestParam("B_NO") int B_NO) {
		
		System.out.println("GGGmap : " + map);
		System.out.println("BNO : " + B_NO);
		
		boardService.reviewUpdate(map);
		
		return "redirect:/board/board_detail?B_NO="+B_NO;
	}
	// 리뷰 삭제
	@RequestMapping(value="reviewd", method = RequestMethod.GET)
	public String reviewd_get(Model model, HttpSession httpSession, 
				HttpServletRequest request, @RequestParam Map<String, Object> map) throws Exception {

		// B_NO 를 바로 받아올수 없기 때문에 기존 디비에 있는 RE_NO를 이용해서 B_NO를 조회후 입력 
		Map<String, Object> a = boardService.reviewDeleteBackURL(map);
		// map 으로 받았기 때문에 int로 형변환
		int B_NO = (int) a.get("B_NO");
		// 리뷰 데이터 삭제
		boardService.reviewDelete(map);
		return "redirect:/board_detail?B_NO=" + B_NO;
	}
	

}
