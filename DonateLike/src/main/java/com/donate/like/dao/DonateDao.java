package com.donate.like.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonateDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	public int donateInsert(Map<String, Object> map) {
		return sessionTemplate.insert("donate.donateInsert", map);
	}
	
	public List<Map<String, Object>> donateList(String no) {
		return sessionTemplate.selectList("donate.donateList", no);
	}
	
	public String donateApply(String TS_NO) {
		return sessionTemplate.selectOne("donate.donateApply", TS_NO);
	}
	
	public Map<String, Object> donateDetailOne(int AA_NO) {
		return sessionTemplate.selectOne("donate.donateDetailOne", AA_NO);
	}
	
}
