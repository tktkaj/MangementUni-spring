package com.university.management.courseregistrationpage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Courseregistrationpage { 
 
	private String DEPT_NAME; //학과 이름
	private int SMT; //학기
	private String STU_GRADE; //학년
	private int YEAR;  //학년도
}
