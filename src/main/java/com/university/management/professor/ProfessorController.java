package com.university.management.professor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.management.professor.dto.Professor;
import com.university.management.professor.service.ProfessorService;

@Controller
public class ProfessorController {


	@Autowired 
	private ProfessorService proService;

	
	@RequestMapping("/professor")
	public String professor(Model model) {
		System.out.println("실행");
		 List<Professor> prolist= proService.proselect(); 
		
		 System.out.println(prolist); 
		
		return "student/professor";
	}
	
	
}
