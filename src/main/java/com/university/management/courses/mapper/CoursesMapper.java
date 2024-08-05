package com.university.management.courses.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.courseregistrationpage.dto.Courseregistrationpage;
import com.university.management.courses.dto.Courses;

@Mapper
public interface CoursesMapper {

	ArrayList<Courses> coursesSelect(Courseregistrationpage cour);

}
