package com.university.management.scholar.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScholarList {
    private String DEPT_CODE; //학과코드
    private int YEAR; //학년도
    private int SMT; //학기
    private String DEPT_NAME; //학과명
    private int STU_NO; // -- 학번
    private String STU_GRADE;//학년
    private String STU_NAME; //학생명
    private double RESULTSAVG; //성적평균
    private String SCH_NAME; //장학금명
    private int SCH_NO;//장학금 유형번호
	private String SCH_STATUS;//장학금 상태
}
