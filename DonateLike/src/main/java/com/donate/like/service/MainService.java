package com.donate.like.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.MainDao;

@Service
public class MainService {
	@Autowired
	MainDao mainDao;
	
	//대상선정 전체
	public List<Map<String, Object>> DTSelectionList() {
		return mainDao.DTSelectionList();
	}
	
	// 대상선정 상세페이지
	public Map<String, Object> DTSelectionOne(int TS_NO) {
		return mainDao.DTSelectionOne(TS_NO);
	}

}
