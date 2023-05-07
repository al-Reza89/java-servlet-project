package com.entity;

public class AddCourse {
	private int id;
	private int courseId;
	private String studentEmail;
	
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
		return "AddCourse [id=" + id + ", courseId=" + courseId + ", studentEmail=" + studentEmail + "]";
	}
	
	
	
}
