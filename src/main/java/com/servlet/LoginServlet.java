package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.RegistrationDAO;
import com.entity.Registration;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String studentEmail=req.getParameter("studentEmail");
		String studentPassword= req.getParameter("studentPassword");
		
		Registration registration= new Registration(studentEmail,studentPassword);
		
		RegistrationDAO dao= new RegistrationDAO(DBConnect.getConn());
		
		HttpSession session = req.getSession();
		
//		System.out.println(registration);
		

		String f= dao.checkUser(registration);
		
		if (f!=null) {
			// kisukkhon er jonno message ta store rakhbo

			session.setAttribute("succMsg", "student Deatils submit successfully..");
			session.setAttribute("localEmail", registration.getStudentEmail());
//			String succMsg = (String) session.getAttribute("succMsg");
//			System.out.println(succMsg);
			
			System.out.println("f");
			System.out.println(f);
			
			if(f.equals("admin")) {
				session.setAttribute("role", "admin");
				resp.sendRedirect("index.jsp");
			}else if(f.equals("student"))
			{   session.setAttribute("role", "student");
				resp.sendRedirect("allCourse.jsp");
			}else if(f.equals("teacher")) {
				session.setAttribute("role", "teacher");
				resp.sendRedirect("courseTeacher.jsp");
			}else {
				resp.sendRedirect("register.jsp");
			}
			
//			<% 
//			if ( localEmail!= null ) {
//					out.println("<p class=\"text-center text-success\">" + localEmail + "</p>");
//				}
//				%>


			
//			System.out.println("student Deatils submit successfully..");
		} else {
			session.setAttribute("errorMsg", "something wrong on server...");
			resp.sendRedirect("home.jsp");
//			System.out.println("something wrong on server.");

		}
		

	
	

}

	
	
}
