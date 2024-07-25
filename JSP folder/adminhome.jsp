<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
<%
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("adminlogin.jsp?msg=Login first.");	
	}
 %>
 <header class="header">
      <ul>
         <li><a href="adminhome.jsp">Home</a></li>
         <li><a href="student.jsp" target="">Students</a></li>
         <li><a href="faculty.jsp" target="">faculty-Details</a></li>
         <li><a href="routes.jsp" target="">Employees-Details</a></li>
         <li><a href="BusDetails.jsp" target="">Admins-Details</a></li>
      </ul>
      <ul class="right">
         <li><h1>Current Admin:<%=user %></h1></li>
         <li><a href="logout.jsp">Logout</a></li>
      </ul>
 </header>
    <iframe name="f1">
    </iframe>
</body>
</html>
    