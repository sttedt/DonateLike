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
	
	// 수혜자 데이터 디비로 보내기
	public int takerInsert(Map<String, Object> map) {
		return sessionTemplate.insert("target.takerInsert", map);
	}
	// 수혜자 목록페이지
	public List<Map<String, Object>> takerList() {
		return sessionTemplate.selectList("target.takerList");
	}
	// 수혜자 수정페이지 가기
	public Map<String, Object> taker_update(int TI_NO) {
		return sessionTemplate.selectOne("target.taker_update", TI_NO);
	}
	
	// 수혜자 수정데이터 디비 보내기
	public int takerUpdate(Map<String, Object> map) {
		return sessionTemplate.update("target.takerUpdate", map);
	}
	// 수혜자 삭제
	public int takerDelete(Map<String, Object> map){
		return sessionTemplate.delete("target.takerDelete", map);
	}
}
