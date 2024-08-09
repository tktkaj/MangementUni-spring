package com.university.management.tuition.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Tuition {
	private int  STU_NO; // 학번
	private int YEAR; // 학년도
	private int SMT; // 학기
	private String DEPT_NAME;// 학과명
    private String TU_PRICE; // 등록금
}
