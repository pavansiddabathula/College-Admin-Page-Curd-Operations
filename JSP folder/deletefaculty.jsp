<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete faculty Page</title>
<link rel="stylesheet" href="css/addstudent.css">
</head>
<body>
<%
  String msg = request.getParameter("msg");
%>
  <div class="container">
        <form method="post" action="registration.jsp">
            <h1 style="text-align:center;">Delete Faculty</h1>
            <% if (msg != null && !msg.isEmpty()){ 
                   if("Successfully deleted".equals(msg)) {%>
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
                <button type="submit" name="button" value="DeleteFaculty">Delete</button>
                <button type="reset">Clear</button>
            </div>
        </form>
    </div>
</body>
</html>
html>
