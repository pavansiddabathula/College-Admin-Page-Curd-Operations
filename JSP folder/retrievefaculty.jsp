<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Retrieve</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="post" action="retrievefaculty1.jsp">
            <h1 style="text-align:center;">Retrieve Faculty</h1>
             <% if (msg != null && !msg.isEmpty()){ 
                   if("Successfully ".equals(msg)) {%>
                	   <p class="messagepos"><%= msg %></p>
                   <% }else{%>
                      <p class="messageneg"><%= msg %></p>
                     <% } %>
             <%} %> 
           
         
            <div class="form-group">
                <label for="rollnumber">Faculty Id Number</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Facculty Id Number" required>
            </div>
            <div class="form-actions">
                <button type="submit" name="submit" value="Student">Add</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
