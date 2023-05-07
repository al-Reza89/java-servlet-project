<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>
</head>
<body class="bg-light">

	<%@include file="navbar.jsp"%>
	<div class="container p-5 ">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-1 ">All Course Details</p>
				<%
				String succMsg = (String) session.getAttribute("succMsg");
				if (succMsg != null && !succMsg.isEmpty()) {
					out.println("<p class=\"text-center text-success\">" + succMsg + "</p>");
					session.removeAttribute("succMsg");
				}
				%>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Teacher Name</th>
							<th scope="col">Assign Date</th>
							<th scope="col">Course Code</th>
							<th scope="col">Course Title</th>
							<th scope="col">Teacher Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						StudentDAO dao = new StudentDAO(DBConnect.getConn());

						List<Student> list = dao.getAllStudent();

						for (Student s : list) {
						%>


						<tr>
							<th scope="row"><%=s.getFullName()%></th>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmail()%></td>
							<td><a href="edit_course.jsp?id=<%=s.getId()%>"
								class="btn btn-sm btn-primary">Edit</a> <a
								href="delete?id=<%=s.getId()%>"
								class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>


			</div>
		</div>

	</div>
</body>
</html>