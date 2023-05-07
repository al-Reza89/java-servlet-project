package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.RegistrationDAO;
import com.entity.Registration;

@WebServlet("/studentRegister")
public class StudentRegister extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String studentName=req.getParameter("studentName");
		String studentEmail=req.getParameter("studentEmail");
		String studentPassword=req.getParameter("studentPassword");
		String studentDept=req.getParameter("studentDept");
		String studentReg=req.getParameter("studentReg");
		String studentCourse=req.getParameter("studentCourse");

		Registration registration = new Registration( studentName,studentEmail,studentPassword,studentDept,studentReg,studentCourse);
		
		 
		RegistrationDAO dao= new RegistrationDAO(DBConnect.getConn());
		
		HttpSession session= req.getSession();
		
		boolean f= dao.addRegisterStudent(registration);
		
		if (f) {
			// kisukkhon er jonno message ta store rakhbo

			session.setAttribute("succMsg", "student Register submit successfully..");
//			String succMsg = (String) session.getAttribute("succMsg");
//			System.out.println(succMsg);

			resp.sendRedirect("signIn.jsp");
//			System.out.println("student Deatils submit successfully..");
		} else {
			session.setAttribute("errorMsg", "something wrong on server...");
			resp.sendRedirect("register.jsp");
//			System.out.println("something wrong on server.");

		}
		
		
	}
	
	

}
