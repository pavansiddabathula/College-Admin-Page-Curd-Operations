<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operations on Faculty </title>
<link rel="stylesheet" href="css/home.css">
<script >
  document.getElementById("btn");
   
</script>
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
         <li><a href="adminhome.jsp" target="">Home</a></li>
         <li><a href="student.jsp" target="">Students</a></li>
         <li><a href="faculty.jsp" target="">faculty-Details</a></li>
         <li><a href="#" target="">Employees-Details</a></li>
         <li><a href="#" target="">Admins-Details</a></li>
      </ul>
      <ul class="right">
         <li><h1>Current user:<%=user %></h1></li>
         <li><a href="logout.jsp">Logout</a></li>
      </ul>
 </header>

 <header class="header">
   <ul>
      <li><a>Faculty--------</a></li>
	  <li><a href="addfaculty.jsp" target="f2">Add-faculty</a></li>
	  <li><a href="updatefaculty.jsp" target="f2">Update-faculty</a></li>
	  <li><a href="retrievefaculty.jsp" target="f2">Retrieve-faculty</a></li>
	  <li><a href="deletefaculty.jsp" target="f2">Delete-faculty</a></li>
	   <li><a href="FacultyAll.jsp" target="f2">DisplayAll</a></li>
   </ul>
</header>
<iframe name ="f2" > 
</iframe>

</body>
</html>
