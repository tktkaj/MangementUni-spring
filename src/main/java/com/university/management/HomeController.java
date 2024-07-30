package com.university.management;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

//	확인용
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	@RequestMapping("/findpasswords")
	public String Find_Passwords() {
		return "login/findpasswords";
	}
	@RequestMapping("/askpresident")
	public String askpresident() {
		return "professor/askpresident";
	}
	@RequestMapping("/popup")
	public String popup() {
		return "professor/popup";
	}
	
	@RequestMapping("/management")
	public String management() {
		return "student/management";
	}
	
	@RequestMapping("/Find_Passwords")
	public String Find_Passwords() {
		return "login/Find_Passwords";
	}
}
