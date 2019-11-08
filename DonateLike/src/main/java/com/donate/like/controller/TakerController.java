package com.donate.like.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TakerController {
	
	
	@RequestMapping(value = "/TakerManagement", method = RequestMethod.GET)
	public String TakerManagement(Model model) {
		
		return "TakerManagement";
	}
}
