<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="POST" action="registration.jsp">
            <h1 style="text-align:center;">ADD Student</h1>
            <% if (msg != null && !msg.isEmpty()) { 
            	 if("Successfully Inserted".equals(msg)){%>
                      <p class="messagepos"><%= msg %></p>
                 <%}else{ %>
                	 <p class="messageneg"><%= msg %></p>
                 <%}%>
             <%}%>     
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Student Roll Number" required>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Student Name" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch</label>
                <select id="branch" name="branch" required>
                    <option value="">Select Branch</option>
                    <option value="CSE">CSE</option>
                    <option value="IT">IT</option>
                    <option value="ECE">ECE</option>
                    <option value="EEE">EEE</option>
                    <option value="AIML">AIML</option>
                    <option value="AI&DS">AI&DS</option>
                    <option value="Civil">Civil</option>
                    <option value="Mech">Mech</option>
                    <option value="IoT">IoT</option>
                </select>
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <select id="year" name="year" required>
                    <option value="">Select Year</option>
                    <option value="1st Year">1st Year</option>
                    <option value="2nd Year">2nd Year</option>
                    <option value="3rd Year">3rd Year</option>
                    <option value="4th Year">4th Year</option>
                </select>
            </div>
             <div class="form-group gender">
                <p>Gender:</p>
                <label>
                    <input type="radio" id="male" name="gender" value="male" required>
                    Male
                </label>
                <label>
                    <input type="radio" id="female" name="gender" value="female" required>
                    Female
                </label>
            </div>
            <div class="form-actions">
                <button type="submit" name="button" value="AddStudent">Add</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
