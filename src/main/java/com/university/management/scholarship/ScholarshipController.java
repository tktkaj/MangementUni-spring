package com.university.management.scholarship;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ScholarshipController {
	
	@RequestMapping("/scholarList")
	public String scholarList() {
		return "scholarship/scholarList";
	}
	
	/*
	 * @RequestMapping("/scholarList") public String
	 * getScholarship(@RequestParam(name = "buttonText", defaultValue = "미지정")
	 * String buttonText) { System.out.println("버튼 텍스트: " + buttonText); return "";
	 * }
	 */

}
