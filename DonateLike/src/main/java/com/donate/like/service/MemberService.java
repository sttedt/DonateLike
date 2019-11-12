package com.donate.like.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.MemberDao;

@Service
public class MemberService {
	
	@Autowired
	MemberDao memberDao;
	
	// 회원가입 정보 디비로 삽입
	public void joinInsert(Map<String, Object> map) {
		memberDao.joinInsert(map);
	}
	// 로그인 처리
	public Map<String, Object> loginSelect(Map<String, Object> map) {
		return memberDao.loginSelect(map);
	}

	public Map<String, Object> profile(String DM_ID) {
		return memberDao.profileOne(DM_ID);
	}
	
	// 회원정보 수정 페이지
	public Map<String, Object> profile_update(String DM_ID) {
		return memberDao.profile_update(DM_ID);
	}
	// 회원정보 수정 데이터를 디비로 보내기
		public void memberUpdate(Map<String, Object> map) {
			memberDao.memberUpdate(map);
	}
}
