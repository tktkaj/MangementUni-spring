package com.university.management.faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.university.management.faculty.service.FacultyService;

@Controller
public class FacultyController {
	
	@Autowired
    private FacultyService service;

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
		return "objection/objectionlist";
	}
	
	// 성적이의신청 데이터 목록 받아오기
	/*
	 * @PostMapping("/objectionSearch")
	 * 
	 * @ResponseBody public List<> filterData(@RequestParam String
	 * department, @RequestParam String subject, @RequestParam String grade) {
	 * return service.objectionFilterData(department, subject, grade); }
	 */
	

	@RequestMapping("/scholarList")
	public String scholarList() {
		return "scholarship/scholarList";
	}
	
	

}
