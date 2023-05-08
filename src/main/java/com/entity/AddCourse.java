package com.entity;

public class AddCourse {
	private int id;
	private int courseId;
	private String studentEmail;
	private String courseTitle;
	private String courseCode;
	private String courseTeacher;
	private String courseEnroll;
	
	
	
	
	public AddCourse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AddCourse(int id, int courseId, String studentEmail) {
		super();
		this.id = id;
		this.courseId = courseId;
		this.studentEmail = studentEmail;
	}

	public AddCourse(int courseId, String studentEmail) {
		super();
		this.courseId = courseId;
		this.studentEmail = studentEmail;
	}
	
	

	public AddCourse(int courseId, String studentEmail, String courseTitle, String courseCode, String courseTeacher,
			String courseEnroll) {
		super();
		this.courseId = courseId;
		this.studentEmail = studentEmail;
		this.courseTitle = courseTitle;
		this.courseCode = courseCode;
		this.courseTeacher = courseTeacher;
		this.courseEnroll = courseEnroll;
	}
	
	

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseCode() {
		return courseCode;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseTeacher() {
		return courseTeacher;
	}

	public void setCourseTeacher(String courseTeacher) {
		this.courseTeacher = courseTeacher;
	}

	public String getCourseEnroll() {
		return courseEnroll;
	}

	public void setCourseEnroll(String courseEnroll) {
		this.courseEnroll = courseEnroll;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	@Override
	public String toString() {
		return "AddCourse [id=" + id + ", courseId=" + courseId + ", studentEmail=" + studentEmail + ", courseTitle="
				+ courseTitle + ", courseCode=" + courseCode + ", courseTeacher=" + courseTeacher + ", courseEnroll="
				+ courseEnroll + "]";
	}

	
	
	
}
