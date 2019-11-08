package com.donate.like.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	// 게시판 목록
	public List<Map<String, Object>> boardList() {
		return sessionTemplate.selectList("board.boardList");
	}
	// 게시판 글쓰기
	public int boardInsert(Map<String, Object> map) {
		return sessionTemplate.insert("board.boardInsert", map);
	}
}
