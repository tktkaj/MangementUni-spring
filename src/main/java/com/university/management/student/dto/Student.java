package com.university.management.student.dto;

import lombok.Data;


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
	public Student() {
		super();
	}



	public String getSCH_NAME() {
		return SCH_NAME;
	}



	public void setSCH_NAME(String sCH_NAME) {
		SCH_NAME = sCH_NAME;
	}



	public Student(int sTU_NO, String dEPT_CODE, String dEPT_NAME, String sTU_NAME, String sTU_PHONE,
			String sTU_ADDRESS, String sTU_JUMIN, String sTU_EMAIL, String sTU_IMG, String sTU_ADMISSION_DATE,
			String sTU_ADMISSION, String sTU_GRADE, String sTU_PASSWORD, String sTU_BK_NUM, String sCH_DISCOUNT,
			String yEAR, int sMT, String r_STATUS, String sCH_NAME) {
		super();
		STU_NO = sTU_NO;
		DEPT_CODE = dEPT_CODE;
		DEPT_NAME = dEPT_NAME;
		STU_NAME = sTU_NAME;
		STU_PHONE = sTU_PHONE;
		STU_ADDRESS = sTU_ADDRESS;
		STU_JUMIN = sTU_JUMIN;
		STU_EMAIL = sTU_EMAIL;
		STU_IMG = sTU_IMG;
		STU_ADMISSION_DATE = sTU_ADMISSION_DATE;
		STU_ADMISSION = sTU_ADMISSION;
		STU_GRADE = sTU_GRADE;
		STU_PASSWORD = sTU_PASSWORD;
		STU_BK_NUM = sTU_BK_NUM;
		SCH_DISCOUNT = sCH_DISCOUNT;
		YEAR = yEAR;
		SMT = sMT;
		R_STATUS = r_STATUS;
		SCH_NAME = sCH_NAME;
	}



	public int getSTU_NO() {
		return STU_NO;
	}

	public void setSTU_NO(int sTU_NO) {
		STU_NO = sTU_NO;
	}

	public String getDEPT_CODE() {
		return DEPT_CODE;
	}

	public void setDEPT_CODE(String dEPT_CODE) {
		DEPT_CODE = dEPT_CODE;
	}

	public String getDEPT_NAME() {
		return DEPT_NAME;
	}

	public void setDEPT_NAME(String dEPT_NAME) {
		DEPT_NAME = dEPT_NAME;
	}

	public String getSTU_NAME() {
		return STU_NAME;
	}

	public void setSTU_NAME(String sTU_NAME) {
		STU_NAME = sTU_NAME;
	}

	public String getSTU_PHONE() {
		return STU_PHONE;
	}

	public void setSTU_PHONE(String sTU_PHONE) {
		STU_PHONE = sTU_PHONE;
	}

	public String getSTU_ADDRESS() {
		return STU_ADDRESS;
	}

	public void setSTU_ADDRESS(String sTU_ADDRESS) {
		STU_ADDRESS = sTU_ADDRESS;
	}

	public String getSTU_JUMIN() {
		return STU_JUMIN;
	}

	public void setSTU_JUMIN(String sTU_JUMIN) {
		STU_JUMIN = sTU_JUMIN;
	}

	public String getSTU_EMAIL() {
		return STU_EMAIL;
	}

	public void setSTU_EMAIL(String sTU_EMAIL) {
		STU_EMAIL = sTU_EMAIL;
	}

	public String getSTU_IMG() {
		return STU_IMG;
	}

	public void setSTU_IMG(String sTU_IMG) {
		STU_IMG = sTU_IMG;
	}

	public String getSTU_ADMISSION_DATE() {
		return STU_ADMISSION_DATE;
	}

	public void setSTU_ADMISSION_DATE(String sTU_ADMISSION_DATE) {
		STU_ADMISSION_DATE = sTU_ADMISSION_DATE;
	}

	public String getSTU_ADMISSION() {
		return STU_ADMISSION;
	}

	public void setSTU_ADMISSION(String sTU_ADMISSION) {
		STU_ADMISSION = sTU_ADMISSION;
	}

	public String getSTU_GRADE() {
		return STU_GRADE;
	}

	public void setSTU_GRADE(String sTU_GRADE) {
		STU_GRADE = sTU_GRADE;
	}

	public String getSTU_PASSWORD() {
		return STU_PASSWORD;
	}

	public void setSTU_PASSWORD(String sTU_PASSWORD) {
		STU_PASSWORD = sTU_PASSWORD;
	}

	public String getSTU_BK_NUM() {
		return STU_BK_NUM;
	}

	public void setSTU_BK_NUM(String sTU_BK_NUM) {
		STU_BK_NUM = sTU_BK_NUM;
	}

	public String getSCH_DISCOUNT() {
		return SCH_DISCOUNT;
	}

	public void setSCH_DISCOUNT(String sCH_DISCOUNT) {
		SCH_DISCOUNT = sCH_DISCOUNT;
	}

	public String getYEAR() {
		return YEAR;
	}

	public void setYEAR(String yEAR) {
		YEAR = yEAR;
	}

	public int getSMT() {
		return SMT;
	}

	public void setSMT(int sMT) {
		SMT = sMT;
	}

	public String getR_STATUS() {
		return R_STATUS;
	}

	public void setR_STATUS(String r_STATUS) {
		R_STATUS = r_STATUS;
	}

	@Override
	public String toString() {
		return "Student [STU_NO=" + STU_NO + ", DEPT_CODE=" + DEPT_CODE + ", DEPT_NAME=" + DEPT_NAME + ", STU_NAME="
				+ STU_NAME + ", STU_PHONE=" + STU_PHONE + ", STU_ADDRESS=" + STU_ADDRESS + ", STU_JUMIN=" + STU_JUMIN
				+ ", STU_EMAIL=" + STU_EMAIL + ", STU_IMG=" + STU_IMG + ", STU_ADMISSION_DATE=" + STU_ADMISSION_DATE
				+ ", STU_ADMISSION=" + STU_ADMISSION + ", STU_GRADE=" + STU_GRADE + ", STU_PASSWORD=" + STU_PASSWORD
				+ ", STU_BK_NUM=" + STU_BK_NUM + ", SCH_DISCOUNT=" + SCH_DISCOUNT + ", YEAR=" + YEAR + ", SMT=" + SMT
				+ ", R_STATUS=" + R_STATUS + "]";
	}
	
	
	}

