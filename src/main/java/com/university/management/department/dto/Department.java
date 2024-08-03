package com.university.management.department.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Department {
	private String DEPT_CODE;  // 학과코드
	private String DEPT_NAME;  // 학과명
	private String DEPT_COM;   // 학과 코멘트
	private String DEPT_IMG; // 학과 이미지
}
