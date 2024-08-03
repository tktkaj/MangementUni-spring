package com.university.management.employee.dto;

public class Employee {

	private int EMP_NO; // 직원번호
	private String EMP_NAME; // 직원명
	private String EMP_PASSWORD; // 비밀번호
	public Employee() {
		super();
	}
	public Employee(int eMP_NO, String eMP_NAME, String eMP_PASSWORD) {
		super();
		EMP_NO = eMP_NO;
		EMP_NAME = eMP_NAME;
		EMP_PASSWORD = eMP_PASSWORD;
	}
	public int getEMP_NO() {
		return EMP_NO;
	}
	public void setEMP_NO(int eMP_NO) {
		EMP_NO = eMP_NO;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}
	public String getEMP_PASSWORD() {
		return EMP_PASSWORD;
	}
	public void setEMP_PASSWORD(String eMP_PASSWORD) {
		EMP_PASSWORD = eMP_PASSWORD;
	}
	@Override
	public String toString() {
		return "Employee [EMP_NO=" + EMP_NO + ", EMP_NAME=" + EMP_NAME + ", EMP_PASSWORD=" + EMP_PASSWORD + "]";
	}

}
