<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Home Page</title>
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
<%
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("facultylogin.jsp?msg=Login first");	
	}
 %>
 <header class="header">
      <ul>
         <li><a href="facultyhome.jsp">Home</a></li>
         <li><a href="rules.jsp" target="f1">Rules and Restrictions</a></li>
         <li><a href="registeration.jsp" target="f1">student-Details</a></li>
         <li><a href="routes.jsp" target="f1">Post-Attendance</a></li>
         <li><a href="BusDetails.jsp" target="f1">Time-Tables</a></li>
          <li><a href="BusDetails.jsp" target="f1">Exams-Details</a></li>
      </ul>
       <ul class="right">
         <li><h1>Current user:<%=user %></h1></li>
         <li><a href="logout.jsp">Logout</a></li>
      </ul>
     
  </header>
  <iframe name="f1">
  </iframe>
</body>
</html>
    
