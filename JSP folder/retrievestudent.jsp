<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Retrieve Student</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="post" action="retrievestudent1.jsp">
            <h1 style="text-align:center;">Retrieve Student</h1>
            <% if (msg != null && !msg.isEmpty()) { 
                   if("No Record Found".equals(msg)) {%>
                	   <p class="messageneg"><%= msg %></p>
                   <% }else{%>
                      <p class="messagepos"><%= msg %></p>
                     <% } %>
             <%} %>        
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Student Roll Number" required>
            </div>
            <div class="form-actions">
                <button type="submit" name="submit" value="Student">Submit</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
