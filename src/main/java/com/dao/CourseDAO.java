package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.entity.AddCourse;

public class CourseDAO {

	private Connection conn;
	private HttpSession session;

	public CourseDAO(Connection conn) {
		super();
		this.conn=conn;
	}

	public boolean addCourse(AddCourse course) {
		
		boolean f=false;
		
		try {
			String sql= "insert into course(courseId,studentEmail,courseTitle,courseCode,courseTeacher,courseEnroll) values(?,?,?,?,?,?) ";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, course.getCourseId());
			ps.setString(2, course.getStudentEmail());
			ps.setString(3, course.getCourseTitle());
			ps.setString(4, course.getCourseCode());
			ps.setString(5, course.getCourseTeacher());
			ps.setString(6, course.getCourseEnroll());
		
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
	public List<AddCourse> getAllCourseId(String localEmail) {
		
		
		
//		System.out.println(localEmail);
		
		List<AddCourse> list = new ArrayList<AddCourse>();
		

		AddCourse s = null;

		try {

			String sql = "select * from course where studentEmail=? ";
			
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, localEmail);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				
				s= new AddCourse();
				
			    s.setId(rs.getInt(1));
				s.setCourseId(rs.getInt(2));
				s.setCourseTitle(rs.getString(4));
				s.setCourseCode(rs.getString(5));
				s.setCourseTeacher(rs.getString(6));
				s.setCourseEnroll(rs.getString(7));
				
				list.add(s);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}
	
	
	
	
}
