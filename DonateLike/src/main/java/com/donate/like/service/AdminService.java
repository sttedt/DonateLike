package com.donate.like.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donate.like.dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	


}

