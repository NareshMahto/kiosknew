package com.csc.kiosk.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {
	
	@GetMapping("/")
	public ModelAndView home()
			{


		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}

}
