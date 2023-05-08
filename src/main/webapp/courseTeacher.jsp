<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.StudentDAO"%>
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
<body class="bg-gray-200 ">

	<%@include file="navbarHome.jsp"%>


	<h2
		class=" text-center pt-3 pb-3 text-4xl font-bold leading-9 tracking-tight text-gray-900   ">See
		All Our Courses</h2>
	<div class="flex  items-center justify-center pt-6  ">
		<div
			class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 xl:grid-cols-4  ">

			<!-- 3 card -->

			<%
			StudentDAO dao = new StudentDAO(DBConnect.getConn());
			
			String teacherEmail = (String) session.getAttribute("localEmail");
			List<Student> list = dao.getTeacherCourse(teacherEmail);

			for (Student s : list) {
			%>


			<div
				class="relative bg-white py-6 px-6 rounded-3xl w-64 my-4   hover:shadow-2xl ">
				<div
					class=" text-white flex items-center absolute rounded-full py-4 px-4 shadow-xl bg-blue-500 left-4 -top-6">
					<!-- svg  -->
					<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none"
						viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2"
							d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
                </svg>
				</div>
				<div class="mt-8">
					<p class="text-xl font-semibold my-2"><%=s.getQualification() %></p>
					<div class="flex space-x-2 text-gray-400 text-sm">
						<!-- svg  -->
						<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5"
							fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                        <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                    </svg>
						<p><%=s.getAddress() %></p>
					</div>
					<div class="flex space-x-2 text-gray-400 text-sm my-3">
						<!-- svg  -->
						<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5"
							fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                    </svg>
						<p><%=s.getDob() %></p>
					</div>
					<div class="flex font-bold space-x-2 text-black text-sm my-3">
						<h4><%=s.getFullName() %></h4>
					</div>
					<div class="border-t-2 "></div>

					<div class="flex justify-between">
						<div class="my-2">
							<p class="font-semibold text-base mb-2">Team Member</p>
							<div class="flex space-x-2">
								<img
									src="https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
									class="w-6 h-6 rounded-full" /> <img
									src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxSqK0tVELGWDYAiUY1oRrfnGJCKSKv95OGUtm9eKG9HQLn769YDujQi1QFat32xl-BiY&usqp=CAU"
									class="w-6 h-6 rounded-full" /> <img
									src="https://upload.wikimedia.org/wikipedia/commons/e/ec/Woman_7.jpg"
									class="w-6 h-6 rounded-full" />
							</div>
						</div>
						<div class="my-2">
							<p class="font-semibold text-base mb-2">Progress</p>
							<div class="text-base text-gray-400 font-semibold">
								<p>4%</p>
							</div>
						</div>
					</div>
					<form action="joinCourse" method="post" >
					<input type="hidden" name="id" value="<%=s.getId()%>">
					<input type="hidden" name="courseTitle" value="<%=s.getQualification()%>">
					<input type="hidden" name="courseCode" value="<%=s.getAddress()%>">
					<input type="hidden" name="courseEnroll" value="<%=s.getDob()%>">
					<input type="hidden" name="courseTeacher" value="<%=s.getFullName()%>">	
					</form>
					
				</div>
			</div>

			<%
			}
			%>

		</div>
	</div>


</body>
</html>