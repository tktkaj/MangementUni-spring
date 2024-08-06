package com.university.management.student.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.student.dto.Student;

@Mapper
public interface StudentMapper {

	List<Student> stuInfoSelect(Integer loginNo);

}
