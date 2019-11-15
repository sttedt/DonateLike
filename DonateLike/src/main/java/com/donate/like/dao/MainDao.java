package com.donate.like.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	//대상선정 전체
	public List<Map<String, Object>> DTSelectionList() {
		return sessionTemplate.selectList("main.DTSelectionList");
	}
	// 대상선정 상세페이지
	public Map<String, Object> DTSelectionOne(int TS_NO) {
		return sessionTemplate.selectOne("main.DTSelectionOne", TS_NO);
}

}
