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
<body style="background-color:" class="bg-light">

	<%@include file="navbar.jsp"%>


	<div class="container p-4">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Course</p>

						<%
						String succMsg = (String) session.getAttribute("succMsg");
						if (succMsg != null && !succMsg.isEmpty()) {
							out.println("<p class=\"text-center text-success\">" + succMsg + "</p>");
							session.removeAttribute("succMsg");
						}
						%>


						<form action="register" method="post">
							<div class="mb-3">
								<label class="form-label">Teacher Name</label> <input type="text"
									class="form-control" name="name">
							</div>
							<div class="mb-3">
								<label class="form-label">Assign Date</label> <input
									type="date" class="form-control" name="dob">
							</div>
							<div class="mb-3">
								<label class="form-label">Course Code</label> <input type="text"
									class="form-control" name="address">
							</div>
							<div class="mb-3">
								<label class="form-label">Course Title</label> <input
									type="text" class="form-control" name="qualification">
							</div>
							<div class="mb-3">
								<label class="form-label">Teacher Email</label> <input type="email"
									class="form-control" name="email">
							</div>
							<button type="submit" class="btn btn-primary col-md-12 ">Submit</button>
						</form>


					</div>
				</div>
			</div>

		</div>


	</div>


</body>
</html>