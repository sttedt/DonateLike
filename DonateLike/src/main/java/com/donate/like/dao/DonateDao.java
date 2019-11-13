package com.donate.like.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonateDao {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	public int donateInsert(Map<String, Object> map) {
		return sessionTemplate.insert("donate.donateInsert", map);
	}
}
