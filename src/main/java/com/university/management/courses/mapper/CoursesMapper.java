package com.university.management.courses.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.courseregistrationpage.dto.Courseregistrationpage;
import com.university.management.courses.dto.Courses;
import com.university.management.courses.dto.CoursesList;

@Mapper
public interface CoursesMapper {

	ArrayList<Courses> coursesSelect(Courseregistrationpage cour);

	void courInsert(Courses course);

	void coustatusupdate(String sub_code);

	void courdelete(String sub_name);

	List<CoursesList> coursesList(CoursesList cour);

}
