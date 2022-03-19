package com.ravi.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ravi.service.IWishService;

@Controller
public class WishMessageOperationController {
	@Autowired
	private IWishService service;
	
	@GetMapping("/")
	public String showHome() {
		return "forward:all";
	}
	@GetMapping("/all")
	public String showHomePage() {
		return "welcome";
	}
	@GetMapping("/wish")
	public ModelAndView fetchWishMessage() {
		String message=service.wishMessage();
		ModelAndView mav=new ModelAndView();
		mav.addObject("SMS", message);
		mav.addObject("sysDate",new Date());
		mav.setViewName("show_result");
		return mav;
	}
}
