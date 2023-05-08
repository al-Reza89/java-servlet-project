package com.entity;

public class Registration {
	
	private int id;
	private String studentName;
	private String studentEmail;
	private String studentPassword;
	private String studentDept;
	private String studentReg;
	private String studentCourse;
	private String role;
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Registration(String studentName, String studentEmail, String studentPassword, String studentDept,
			String studentReg, String studentCourse) {
		super();
		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
		this.studentDept = studentDept;
		this.studentReg = studentReg;
		this.studentCourse = studentCourse;
	}



	public Registration(int id, String studentName, String studentEmail, String studentPassword, String studentDept,
			String studentReg, String studentCourse) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
		this.studentDept = studentDept;
		this.studentReg = studentReg;
		this.studentCourse = studentCourse;
	}
	
	
	public Registration(String studentEmail, String studentPassword) {
		super();
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
	}

	


	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public Registration(String studentEmail, String studentPassword, String role) {
		super();
		this.studentEmail = studentEmail;
		this.studentPassword = studentPassword;
		this.role = role;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public String getStudentPassword() {
		return studentPassword;
	}
	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}
	public String getStudentDept() {
		return studentDept;
	}
	public void setStudentDept(String studentDept) {
		this.studentDept = studentDept;
	}
	public String getStudentReg() {
		return studentReg;
	}
	public void setStudentReg(String studentReg) {
		this.studentReg = studentReg;
	}
	public String getStudentCourse() {
		return studentCourse;
	}
	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}
	@Override
	public String toString() {
		return "Registration [id=" + id + ", studentName=" + studentName + ", studentEmail=" + studentEmail
				+ ", studentPassword=" + studentPassword + ", studentDept=" + studentDept + ", studentReg=" + studentReg
				+ ", studentCourse=" + studentCourse + ", role=" + role + "]";
	}

	
	

}
