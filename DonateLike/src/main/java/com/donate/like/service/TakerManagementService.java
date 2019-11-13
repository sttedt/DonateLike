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
	
	// 수혜자 데이터 디비로 보내기
	public void takerInsert(Map<String, Object> map) {
		takerManagementDao.takerInsert(map);
	}
	// 수혜자 목록페이지
	public List<Map<String, Object>> takerList() {
		return takerManagementDao.takerList();
	}
	
	// 수혜자 수정페이지 가기
	public Map<String, Object> taker_update(int TI_NO) {
		return takerManagementDao.taker_update(TI_NO);
	}
	// 수혜자 수정데이터 디비에 보내기
	public void takerUpdate(Map<String, Object> map) {
		takerManagementDao.takerUpdate(map);
	}

}
