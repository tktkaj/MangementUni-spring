package com.university.management.student.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {

	private int  STU_NO; // 학번
	private String DEPT_CODE; // 학과코드
	private String DEPT_NAME;// 학과명
	private String STU_NAME; // 이름
	private String STU_PHONE; // 핸드폰 번호
	private String STU_ADDRESS; // 주소
	private String STU_JUMIN; // 주민번호
	private String STU_EMAIL; // 이메일
	private String STU_IMG; // 이미지 파일
	private String STU_ADMISSION_DATE; // 입학날짜
	private String STU_ADMISSION; // 입학금 1학년만(1,000,000) 입력 나머지 2,3,4학년은 null값
	private String STU_GRADE; // 학년
	private String STU_PASSWORD; // 비밀번호
	private String STU_BK_NUM; // 계좌 번호
	private String SCH_DISCOUNT; // 장학금
	private String YEAR; // 학년도
	private int SMT; // 학기
	private String R_STATUS; // 상태	
    private String SCH_NAME;// 장학금 이름

	
	}

