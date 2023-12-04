package com.csc.kiosk.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.csc.kiosk.dao.LoginDao;
import com.csc.kiosk.model.AdminUser;
import com.csc.kiosk.services.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService; 

	@RequestMapping(path = com.csc.kiosk.urls.Common.FrormAction.LOGIN_ACTION, method = RequestMethod.POST)
	public ModelAndView adminLogin(@ModelAttribute AdminUser adminUser, HttpSession session,
			HttpServletRequest request) {

		final Date today = new Date();
		final SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS");
		df.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
		final String dateLocal = df.format(today);
		ModelAndView mv = new ModelAndView(com.csc.kiosk.urls.Common.Pages.lOGIN_PAGE);

		String id = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(id + " +++56++++++++++ " + password);
		AdminUser loginDetail = this.loginService.getLoginDetails(id, password);

		if (id == "" || password == "") {
			mv.addObject("status", "Please enter your Username and Password!!");
			return mv;
		} else if (loginDetail == null) {
			mv.addObject("status", "Invalid Username");
			return mv;
		} else if (!loginDetail.getPassword().equals(password)) {
			mv.addObject("status", "Invalid  password");
			return mv;
		} else if (loginDetail.getPassword().equals(password)) {
			mv.setViewName(com.csc.kiosk.urls.Common.Pages.USER_DASHBORD);
			mv.addObject("status", "Login Success!!");
			
			session.setAttribute("userAdmin", id);

			return mv;
		}
		System.out.println(id + " +++++++++++++ " + password);
		return mv;
	}
	
	
	
	@GetMapping(com.csc.kiosk.urls.Common.FrormAction.LOGOUT_ACTION)
	public String adminLogout(HttpSession session) {
		System.out.println("in logouy");
		
		session.invalidate();
		
		return "redirect:/";
	}

}
