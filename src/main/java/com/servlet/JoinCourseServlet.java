package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.CourseDAO;
import com.entity.AddCourse;

@WebServlet("/joinCourse")
public class JoinCourseServlet  extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String studentEmail = (String) session.getAttribute("localEmail");
		int courseId=Integer.parseInt(req.getParameter("id"));
		String courseTitle=req.getParameter("courseTitle");
		String courseCode=req.getParameter("courseCode");
		String courseTeacher=req.getParameter("courseTeacher");
		String courseEnroll=req.getParameter("courseEnroll");
		
		
		
		System.out.println(courseId);
		System.out.println(studentEmail);
		
		AddCourse course = new AddCourse(courseId,studentEmail,courseTitle,courseCode,courseTeacher,courseEnroll);
		
		CourseDAO dao= new CourseDAO(DBConnect.getConn());
		
		boolean f=dao.addCourse(course);
		
		if(f)
		{
			session.setAttribute("successAddCourse", "thanks for enrolling the course..");
			resp.sendRedirect("joinCourse.jsp");
			
		}else {
			session.setAttribute("alreadyAddCourse", "You Already added this Course..");
			resp.sendRedirect("allCourse.jsp");
		}
		
		
		
	}
	
	
	
	

}
