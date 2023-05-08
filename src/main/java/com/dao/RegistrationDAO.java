package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Registration;

public class RegistrationDAO {
	
	private Connection conn;

	public RegistrationDAO(Connection conn) {
		super();
		this.conn=conn;
	}
	
	
	
	public boolean addRegisterStudent(Registration registration)
	{
		boolean f= false;
		
		try {

			String sql= "insert into student_infos(studentName,studentEmail,studentPassword,studentDept,studentReg,role) values(?,?,?,?,?,?)";
			
			PreparedStatement ps= conn.prepareStatement(sql);
			
			ps.setString(1, registration.getStudentName());
			ps.setString(2, registration.getStudentEmail());
			ps.setString(3, registration.getStudentPassword());
			ps.setString(4, registration.getStudentDept());
			ps.setString(5, registration.getStudentReg());
			ps.setString(6, "student");
			
			
			int i= ps.executeUpdate();
			 
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	
	public String checkUser(Registration registration)
	{
		String returnRole="student";
				
		
		try {
			
			String sql ="select * from student_infos where studentEmail=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
//			System.out.println(registration.getStudentEmail());	
			ps.setString(1, registration.getStudentEmail());
			
			ResultSet rs=ps.executeQuery();
			
			String returnEmail=null,returnPassword=null ;
			
			while (rs.next()) {
				 returnEmail = rs.getString("studentEmail");
				 returnPassword = rs.getString("studentPassword");
				 returnRole= rs.getString("role");
//				 System.out.println("Email: " + returnEmail + ", Password: " + returnPassword + ", Role: " + returnRole);
			}
			
			if (returnEmail != null && returnEmail.equals(registration.getStudentEmail()) &&
	                returnPassword != null && returnPassword.equals(registration.getStudentPassword())) {
				
	            return returnRole;
	        }
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return returnRole;
	}
	
	
	

}
