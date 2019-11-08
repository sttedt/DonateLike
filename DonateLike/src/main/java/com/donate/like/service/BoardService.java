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

}
