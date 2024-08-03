package com.university.management.professor.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Professor {

	private int PROF_NO; // 교수번호
	private String PROF_NAME; // 교수명
	private String PROF_PHONE; // 핸드폰번호
	private String PROF_ADDRESS; //주소
	private String PROF_JUMIN; //주민번호
	private String PROF_STATUS;//재직상태
	private String PROF_EMAIL;//이메일
	private String PROF_JOB;//직급
	private String PROF_IMG;//이미지 파일
	private String PROF_EMPLOYMENT_DATE ;//입사일
	private String DEPT_NAME;//학과
	private String SUB_NAME; //과목명
	private String DEPT_CODE; //과목명

	

}
