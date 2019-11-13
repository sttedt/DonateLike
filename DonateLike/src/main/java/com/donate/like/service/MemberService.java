package com.donate.like.service;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

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
	// 회원정보 상세페이지
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
	// 아이디 찾기
	public String find_id(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = memberDao.find_id(email);

		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}

}

