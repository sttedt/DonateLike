package com.donate.like.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TakerManagementDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	// 게시판 글쓰기
	public int takerInsert(Map<String, Object> map) {
		return sessionTemplate.insert("target.takerInsert", map);
	}
	// 게시판 목록
	public List<Map<String, Object>> takerList() {
		return sessionTemplate.selectList("target.takerList");
	}
	// 게시판 수정페이지 가기
	public Map<String, Object> taker_update(int TI_NO) {
		return sessionTemplate.selectOne("target.taker_update", TI_NO);
	}
}
