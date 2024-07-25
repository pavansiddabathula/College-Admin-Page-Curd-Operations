<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Faculty</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="post" action="checkupdatefaculty.jsp">
            <h1 style="text-align:center;">Update Faculty</h1>
             <% if (msg != null && !msg.isEmpty()) { 
                   if("Successfully Updated".equals(msg)) {%>
                	   <p class="messagepos"><%= msg %></p>
                   <% }else{%>
                      <p class="messageneg"><%= msg %></p>
                     <% } %>
             <%} %>
           
            <div class="form-group">
                <label for="rollnumber">Faculty-Id</label>
                <input type="text" id="rollnumber" name="rollnumber" placeholder="Faculty Id Number" required>
            </div>
            <div class="form-actions">
                <button type="submit" name="submit" value="UpdateStudent">Add</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
