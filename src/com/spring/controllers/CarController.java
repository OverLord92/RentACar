package com.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dao.CarDAO;

@Controller
public class CarController {
	
	
	
	
	@RequestMapping("/car")
	public String goHome(){
			
				
		return "home";
	}

}
