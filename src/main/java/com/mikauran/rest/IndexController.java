package com.mikauran.rest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String getIndexPage(){
		return "UserManagement";
	}
	

}
