package com.university.management.department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.management.department.dto.Department;
import com.university.management.department.service.DepartmentService;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService deptService;
	

	
	@RequestMapping("/department")
	public String professor(Model model,String department) {
		System.out.println("departmentController실행");
		System.out.println("옵션값"+ department);
		 List<Department> deptlist= deptService.deptselect(department); 
		
		 System.out.println(deptlist); 
		model.addAttribute("list",deptlist);
		model.addAttribute("department",department);
		return "department/department";
	}
	
	
}
