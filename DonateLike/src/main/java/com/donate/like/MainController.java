package com.donate.like;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main( Model model) {
		return "main";
	}
}
