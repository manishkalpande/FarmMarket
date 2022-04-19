package com.shetbajar.shetBajar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	
	@RequestMapping(value="/home" , method= RequestMethod.GET)
	public String firstLine()
	{
		return "home";
	}
	
	@RequestMapping("/next")
	public String customer()
	{
		return "customer";
	}
	

}
