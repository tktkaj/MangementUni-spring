package com.university.management.department.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.management.department.dto.Department;
import com.university.management.department.mapper.DepartmentMapper;

@Service
public class DepartmentService {

	@Autowired
	private DepartmentMapper mapper;
	
	public List<Department> deptselect(String department) {
		System.out.println("departmentService실행");
		return mapper.deptselect(department);
	}

}
