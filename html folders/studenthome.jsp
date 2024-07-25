<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home </title>
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
<%
 String user=(String)session.getAttribute("user");
	if (user==null)
	{
		 response.sendRedirect("index.jsp?msg=Invalid Credentials");	
	}
 %>
 <header class="header">
      <ul>
         <li><a href="#" target="f1">Home</a></li>
         <li><a href="#" target="f1">Academics-curriculum</a></li>
         <li><a href="#" target="f1">Studentdetails</a></li>
         <li><a href="#" target="f1">Events</a></li>
         <li><a href="#" target="f1">Bus-Details</a></li>
         <li><a href="#" target="f1">Fee-Details</a></li>
         <li><a href="#" target="f1">marks</a></li>
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
    