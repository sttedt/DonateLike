package com.donate.like.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.donate.like.service.TakerManagementService;

@Controller
public class TakerManagementController {
	@Autowired
	TakerManagementService takerManagementService;
	
	@RequestMapping(value = "/taker_insert", method = RequestMethod.GET)
	public String TakerManagement(Model model) {
		
		return "taker_insert";
	}

	
	
	
	
}
