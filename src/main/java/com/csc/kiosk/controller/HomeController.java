package com.csc.kiosk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@GetMapping(com.csc.kiosk.urls.Common.Urls.HOME)
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView(com.csc.kiosk.urls.Common.Pages.lOGIN_PAGE);

		return mv;
	}

}
