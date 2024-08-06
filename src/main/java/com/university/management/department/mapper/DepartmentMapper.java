package com.university.management.department.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.university.management.department.dto.Department;

@Mapper
public interface DepartmentMapper {

	List<Department> deptselect(String department);

}
