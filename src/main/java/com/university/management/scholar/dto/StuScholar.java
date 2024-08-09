package com.university.management.scholar.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StuScholar {

	private int YEAR; // 학년도
	private int SMT; // 학기
	private String SCH_NAME; // 장학금명
	private String SCH_DISCOUNT; // 장학금명
}
