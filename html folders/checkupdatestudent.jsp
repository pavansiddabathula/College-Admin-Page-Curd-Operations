<%@ page import="Demo.demo1"%>
<%@page import="Demo.StudentData"%>
<%@page import="java.util.ArrayList"%>
<%
   String RollNumber = request.getParameter("rollnumber");
   String msg = request.getParameter("msg");
   if (msg == null) msg = "";
   demo1 dao = new demo1();
   ArrayList<StudentData> dataList = dao.UpdateStudent(RollNumber);
   if (dataList == null || dataList.isEmpty()) {
       response.sendRedirect("updatestudent.jsp?msg=No record Found");
   } else {
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
  <div class="container">
         <%
         for (StudentData data : dataList) {
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
                <label for="year">Year</label>
                <select id="year" name="year" required>
                    <option value="" disabled>Select Year</option>
                    <option value="1st Year" <%= "1st Year".equals(data.getYear()) ? "selected" : "" %>>1st Year</option>
                    <option value="2nd Year" <%= "2nd Year".equals(data.getYear()) ? "selected" : "" %>>2nd Year</option>
                    <option value="3rd Year" <%= "3rd Year".equals(data.getYear()) ? "selected" : "" %>>3rd Year</option>
                    <option value="4th Year" <%= "4th Year".equals(data.getYear()) ? "selected" : "" %>>4th Year</option>
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
                <button type="submit" name="button" value="UpdateStudent">Update</button>
                <button type="reset">Clear</button>
            </div> 
        </form>
         <%
        }
       %>
    
    </div>
</body>
</html>
  <%} %>
