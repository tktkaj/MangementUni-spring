package com.university.management.courses.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.courseregistrationpage.dto.Courseregistrationpage;
import com.university.management.courses.dto.Courses;
import com.university.management.courses.mapper.CoursesMapper;

@Service
public class CoursesService {

	@Autowired
	CoursesMapper mapper;
	
	public ArrayList<Courses> coursesSelect(Courseregistrationpage cour) {
	
		return mapper.coursesSelect(cour);
	}

}
