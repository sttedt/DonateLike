package com.donate.like.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.BoardDao;

@Service
public class BoardService {
	@Autowired
	BoardDao boardDao;
	
	// 게시판 목록
	public List<Map<String, Object>> boardList() {
		return boardDao.boardList();
	}
	// 게시판 글쓰기
	public void boardInsert(Map<String, Object> map) {
		boardDao.boardInsert(map);
	}

	// 게시판 상세페이지
	public Map<String, Object> boardOne(int B_NO) {
		return boardDao.boardOne(B_NO);
	}
	
	// 게시판 수정페이지 가기
	public Map<String, Object> board_update_ready(int B_NO) {
		return boardDao.board_update_ready(B_NO);
	}
	// 게시판 수정데이터 디비에 보내기
	public void boardUpdate(Map<String, Object> map) {
		boardDao.boardUpdate(map);
	}
	// 게시판 삭제
	public void boardDelete(Map<String, Object> map) {
		boardDao.boardDelete(map);
	}
	// 리뷰 쓰기 불러오기
	public Map<String, Object> reviewOne(int B_NO) {
//		boardDao.update(id); // 조회수 증가
		return boardDao.reviewOne(B_NO);
	}
	// 리뷰 디비 저장
	public void reviewInsert(Map<String, Object> map){
		boardDao.reviewInsert(map);
	}
	// 리뷰 목록
	public List<Map<String, Object>> reviewList(int B_NO) {
		return boardDao.reviewList(B_NO);
	}
	// 리뷰 수정페이지
	public Map<String, Object> getReview(Map<String, Object> map) {
		return boardDao.getReview(map);
	}
	// 리뷰 수정데이터 넘기기
	public void reviewUpdate(Map<String, Object> map) {
		boardDao.reviewUpdate(map);
	}

	public void reviewDelete(Map<String, Object> map) {
	
		boardDao.reviewDelete(map);
	}
	
	public Map<String, Object> reviewDeleteBackURL( Map<String, Object> map) {
		return boardDao.reviewDeleteBackURL(map);
	
	}
}
