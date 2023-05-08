package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		
		boolean f= dao.deleteStudent(id);
		
		HttpSession session= req.getSession();
		
		
		if(f)
		{
			// kisukkhon er jonno message ta store rakhbo
			
			session.setAttribute("succMsg", "course Deatils Delete successfully..");
//			String succMsg = (String) session.getAttribute("succMsg");
//			System.out.println(succMsg);


			resp.sendRedirect("index.jsp");
//			System.out.println("student Deatils submit successfully..");
		}else {
			session.setAttribute("errorMsg", "something wrong on server...");
			resp.sendRedirect("index.jsp");
//			System.out.println("something wrong on server.");

		}
		
	}
	
}
