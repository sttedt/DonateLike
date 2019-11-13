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
	// 회원정보 상세페이지
	public Map<String, Object> profileOne(String DM_ID) {
		return ss.selectOne("donate_member.profileOne", DM_ID);
	}
	// 회원정보 수정페이지
	public Map<String, Object> profile_update(String DM_ID) {
		return ss.selectOne("donate_member.profile_update", DM_ID);
	}
	// 회원정보 수정 데이터를 디비로 보내기
	public int memberUpdate(Map<String, Object> map) {
		return ss.update("donate_member.memberUpdate", map);
	}		
	// 아이디 찾기
	public String find_id(String email) throws Exception{
		return ss.selectOne("donate_member.find_id", email);
	}
}
