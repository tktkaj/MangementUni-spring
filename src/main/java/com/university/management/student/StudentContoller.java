package com.university.management.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentContoller {

	@RequestMapping("/askpresident")
	public String askpresident() {
		return "student/askpresident";
	}

	@RequestMapping("/studentinfo")
	public String management() {
		return "student/studentinfo";
	}

	@RequestMapping("/sechedule")
	public String sechedule() {
		return "student/sechedule";
	}

	@RequestMapping("/idcard")
	public String idcard() {
		return "student/idcard";
	}

	@RequestMapping("/popup")
	public String popup() {
		return "student/popup";
	}
	
	@RequestMapping("/MyCoursesList")
	public String MyCoursesList() {
		return "courses/MyCoursesList";
	}
	
	@RequestMapping("/MyCoursesPage")
	public String MyCoursesPage() {
		return "courses/MyCoursesPage";
	}

}
