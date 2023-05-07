package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/joinCourse")
public class JoinCourseServlet  extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String studentEmail = (String) session.getAttribute("localEmail");
		int courseId=Integer.parseInt(req.getParameter("id"));
		
		
		System.out.println(courseId);
		System.out.println(studentEmail);
		
		
		
		
		resp.sendRedirect("joinCourse.jsp");
		
	}
	
	
	
	

}
