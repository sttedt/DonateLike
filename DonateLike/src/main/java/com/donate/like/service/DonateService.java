package com.donate.like.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.DonateDao;

@Service
public class DonateService {
	@Autowired
	DonateDao donateDao;
	
	public void donateInsert(Map<String, Object> map) {
		donateDao.donateInsert(map);
	}
	public List<Map<String, Object>> donateList(String no) {
		return donateDao.donateList(no);
	}
	public String donateApply(String TS_NO) {
		return donateDao.donateApply(TS_NO);
	}
	
	public Map<String, Object> donateDetailOne(int AA_NO) {
		return donateDao.donateDetailOne(AA_NO);
	}

}
