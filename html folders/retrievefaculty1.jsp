<%@ page import="Demo.demo1"%>
<%@page import="Demo.FacultyData"%>
<%@page import="java.util.ArrayList"%>
<%
   String RollNumber = request.getParameter("rollnumber");
   String msg = request.getParameter("msg");
   if (msg == null) msg = "";
   demo1 dao = new demo1();
   ArrayList<FacultyData> dataList = dao.UpdateFaculty(RollNumber);
   if (dataList == null || dataList.isEmpty()) {
       response.sendRedirect("updatefaculty.jsp?msg=No record Found");
   } else {
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Faculty</title>
<link rel="stylesheet" href="css/retrieve.css">
</head>
<body>
  <div class="container">
         <%
         for (FacultyData data : dataList) {
         %>
        <form method="POST" action="registration.jsp">
            <h1 style="text-align:center;">Update Student</h1>
            <% if (msg != null && !msg.isEmpty()) { %>
            <p class="message"><%= msg %></p>
            <% } %>
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Student Roll Number" value="<%= data.getRollNumber() %>" required>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Student Name" value="<%= data.getName() %>" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch</label>
                <select id="branch" name="branch" required>
                    <option value="" disabled>Select Branch</option>
                    <option value="CSE" <%= "CSE".equals(data.getBranch()) ? "selected" : "" %>>CSE</option>
                    <option value="IT" <%= "IT".equals(data.getBranch()) ? "selected" : "" %>>IT</option>
                    <option value="ECE" <%= "ECE".equals(data.getBranch()) ? "selected" : "" %>>ECE</option>
                    <option value="EEE" <%= "EEE".equals(data.getBranch()) ? "selected" : "" %>>EEE</option>
                    <option value="AIML" <%= "AIML".equals(data.getBranch()) ? "selected" : "" %>>AIML</option>
                    <option value="AI&DS" <%= "AI&DS".equals(data.getBranch()) ? "selected" : "" %>>AI&DS</option>
                    <option value="Civil" <%= "Civil".equals(data.getBranch()) ? "selected" : "" %>>Civil</option>
                    <option value="Mech" <%= "Mech".equals(data.getBranch()) ? "selected" : "" %>>Mech</option>
                    <option value="IoT" <%= "IoT".equals(data.getBranch()) ? "selected" : "" %>>IoT</option>
                </select>
            </div>
           <div class="form-group">
                <label for="year">Role</label>
                <select id="year" name="year" required>
                    <option value="" disabled>select Role</option>
                    <option value="Junior Assistant Professor" <%= "Junior Assistant Professor".equals(data.getYear()) ? "selected" : "" %>>Junior Assistant Professor</option>
                    <option value="Senior Assistant Professor"<%= "Senior Assistant Professor".equals(data.getYear()) ? "selected" : "" %>>Senior Assistant Professor</option>
                    <option value="Technician" <%= "Technician".equals(data.getYear()) ? "selected" : "" %>>Technician</option>
                </select>
            </div>
            <div class="form-group gender">
                <p>Gender:</p>
                <label>
			        <input type="radio" id="male" name="gender" value="male" <%= "male".equals(data.getGender()) ? "checked" : "" %> required>
			        Male
			    </label>
			    <label>
			        <input type="radio" id="female" name="gender" value="female" <%= "female".equals(data.getGender()) ? "checked" : "" %> required>
			        Female
			    </label>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Student Password" value="<%= data.getPassword() %>" required>
            </div>
           <div class="form-actions">
                <button type="submit" name="button" value="UpdateFaculty">Update</button>
                <button type="reset">Delete</button>
            </div> 
        </form>
         <%
        }
       %>
    
    </div>
</body>
</html>
  <%} %>
