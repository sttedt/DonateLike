package com.donate.like.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public int TargetSelectionupdate(Map<String, Object> map) {
		return sessionTemplate.insert("admin.TargetSelectionupdate",map);
	}
	
	public List<Map<String, Object>> donateList(String no) {
		return sessionTemplate.selectList("admin.donateList", no);
	}
	
}


