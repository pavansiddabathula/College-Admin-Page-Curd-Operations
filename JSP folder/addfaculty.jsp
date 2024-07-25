<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Faculty</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="post" action="registration.jsp">
            <h1 style="text-align:center;">ADD Faculty</h1>
           <% if (msg != null && !msg.isEmpty()) { 
            	 if("Successfully Inserted".equals(msg)){%>
                      <p class="messagepos"><%= msg %></p>
                 <%}else{ %>
                	 <p class="messageneg"><%= msg %></p>
                 <%}%>
             <%}%>
         
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Faculty ID Number" required>
            </div>
            <div class="form-group">
                <label for="name">Faculty-Name</label>
                <input type="text" id="name" name="name" placeholder="Faculty- Name" required>
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
                <label for="year">Role</label>
                <select id="year" name="year" required>
                    <option value="">Select Role</option>
                    <option value="Junior Assistant Professor">Junior Assistant Professor</option>
                    <option value="Senior Assistant Professor">Senior Assistant Professor</option>
                    <option value="Technician">Technician</option>
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
                <button type="submit" name="button" value="AddFaculty">Add</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
