package com.university.management.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

	@RequestMapping("/askpresident")
	public String askpresident() {
		return "student/askpresident";
	}

	@RequestMapping("/studentinfo")
	public String management() {
		return "student/studentinfo";
	}
	
	@RequestMapping("/studentstatus")
	public String studentstatus() {
		return "student/studentstatus";
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
	
	@RequestMapping("/myCoursesList")
	public String MyCoursesList() {
		return "courses/myCoursesList";
	}
	
	@RequestMapping("/myCoursesPage")
	public String MyCoursesPage() {
		return "courses/myCoursesPage";
	}
	
	@RequestMapping("/objection")
	public String objection() {
		return "objection/objection";
	}
	
	@RequestMapping("/objectionWrite")
	public String objectionWrite() {
		return "objection/objectionWrite";
	}

}
