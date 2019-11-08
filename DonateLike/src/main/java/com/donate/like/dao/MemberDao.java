package com.donate.like.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate ss;
	
	//회원가입 정보 전송
	public int joinInsert(Map<String, Object> map) {
		return ss.insert("donate_member.joinInsert", map);
	}
	//로그인 처리
	public Map<String, Object> loginSelect(Map<String, Object> map) {
		return ss.selectOne("donate_member.loginSelect", map);
	}

}
