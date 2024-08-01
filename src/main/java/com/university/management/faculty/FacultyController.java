package com.university.management.faculty;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacultyController {
	
	@RequestMapping("/infoboard")
	public String infoboard() {
		
		return "faculty/infoboard";
	}
	
	@RequestMapping("/infodetail")
	public String infodetail() {
		
		return "faculty/infodetail";
	}
	
	@RequestMapping("/writeinfo")
	public String writeinfo() {
		
		return "faculty/writeinfo";
	}
	
	@RequestMapping("/updateinfo")
	public String updateinfo() {
		
		return "faculty/updateinfo";
	}
	
	@RequestMapping("/objectionList")
	public String objectionList() {
		return "objection/objectionList";
	}

}
