package com.donate.like.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.TakerManagementDao;
@Service
public class TakerManagementService {
	@Autowired
	TakerManagementDao takerManagementDao;
	
	// 게시판 글쓰기
	public void takerInsert(Map<String, Object> map) {
		takerManagementDao.takerInsert(map);
	}
	// 게시판 목록
	public List<Map<String, Object>> takerList() {
		return takerManagementDao.takerList();
	}
	
	// 게시판 수정페이지 가기
	public Map<String, Object> taker_update(int TI_NO) {
		return takerManagementDao.taker_update(TI_NO);
	}

}
