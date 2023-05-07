<%@page import="com.entity.Student"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>
</head>
<body class="bg-light">

	<%@include file="navbar.jsp"%>


	<div class="container p-4">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student</p>


						<%
						int id = Integer.parseInt(request.getParameter("id"));
						StudentDAO dao = new StudentDAO(DBConnect.getConn());
						Student s = dao.getStudentById(id);
						%>

						<form action="update" method="post">
							<div class="mb-3">
								<label class="form-label">Teacher Name</label> <input type="text"
									class="form-control" name="name" value="<%=s.getFullName()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Assign Date</label> <input
									type="date" class="form-control" name="dob"
									value="<%=s.getDob()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Course Code</label> <input type="text"
									class="form-control" name="address" value="<%=s.getAddress()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Course Title</label> <input
									type="text" class="form-control" name="qualification"
									value="<%=s.getQualification()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Teacher Email</label> <input type="email"
									class="form-control" name="email" value="<%=s.getEmail()%>">
							</div>

							<input type="hidden" name="id" value="<%=s.getId()%>">


							<button type="submit" class="btn btn-primary col-md-12 ">Update</button>
						</form>
					</div>
				</div>
			</div>

		</div>


	</div>


</body>
</html>