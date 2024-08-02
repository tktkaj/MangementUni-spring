package com.university.management.professor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.professor.dto.Professor;

@Mapper
public interface ProfessorMapper {
	//교수 전체 조회
	List<Professor> proselect();

}

