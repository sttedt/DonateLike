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
	

}
