package com.donate.like.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate ss;
	
	public int joinInsert(Map<String, Object> map) {
		return ss.insert("donate_member.joinInsert", map);
		
	}

}
