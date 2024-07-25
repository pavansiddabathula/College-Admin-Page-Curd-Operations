<%@ page import="Demo.demo1" %>
<%@ page import="Demo.FacultyData" %>
<%@ page import="java.util.ArrayList" %>
<%
    String msg = request.getParameter("msg");
    if (msg == null) msg = "";
    demo1 dao = new demo1();
    ArrayList<FacultyData> dataList = dao.UpdateFaculty1(); // Corrected line
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Faculty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        tr:nth-child(odd) {
            background-color: #e9f5ff; 
        }
        
        tr:nth-child(even) {
            background-color: #ffffff; 
        }
        
        table, th, td {
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 style="text-align:center;">Faculty Records</h1>
        <table>
            <tr>
             
                <th>Roll Number</th>
                <th>Name</th>
                <th>Branch</th>
                <th>Role</th>
                <th>Gender</th>
            
            </tr>
            <%
            for (FacultyData data : dataList) {
            %>
            <tr>
        
                <td><%= data.getRollNumber() %></td>
                <td><%= data.getName() %></td>
                <td><%= data.getBranch() %></td>
                <td><%= data.getYear() %></td>
                 <td><%= data.getGender() %></td>
          
          
            </tr>
            <%
            }
            %>
        </table>
    </div>
</body>
</html>
