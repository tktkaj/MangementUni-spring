package com.university.management.scholar.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Scholar {

	private int STU_NO; //학번
	private String DEPT_CODE; //학과코드
	private int SCH_NO; //장학금 번호
	private int YEAR; //학년도
	private int SMT; //학기

	
	
}
