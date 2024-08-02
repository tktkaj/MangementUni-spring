package com.university.management.professor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.professor.dto.Professor;
import com.university.management.professor.mapper.ProfessorMapper;

@Service
public class ProfessorService {

	@Autowired
	private ProfessorMapper mapper;
	
	public List<Professor> proselect() {
	System.out.println("ProfessorService실행");
		return mapper.proselect();
	}

}
