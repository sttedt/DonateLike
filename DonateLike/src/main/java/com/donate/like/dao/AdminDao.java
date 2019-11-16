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
	
	public int TargetSelectionInsert(Map<String, Object> map) {
		return sessionTemplate.insert("admin.TargetSelectionInsert",map);
	}
	
	public List<Map<String, Object>> donateList(String no) {
		return sessionTemplate.selectList("admin.donateList", no);
	}
	
	public int TargetSelectionUpdate(Map<String, Object> map) {
		return sessionTemplate.update("admin.TargetSelectionUpdate", map);
	}
	//대상선정 삭제
	public int TargetSelectionDelete(Map<String, Object> map){
		return sessionTemplate.delete("admin.TargetSelectionDelete", map);
	}
	
}

