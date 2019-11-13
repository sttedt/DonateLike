package com.donate.like.service;

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

}
