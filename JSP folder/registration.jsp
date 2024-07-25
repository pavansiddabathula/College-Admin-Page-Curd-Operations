<%@ page import="Demo.demo1" %>
<%@ page import="java.util.*" %>
<%
    String RollNumber = request.getParameter("rollnumber");
    String Name = request.getParameter("name");
    String Branch = request.getParameter("branch");
    String Year = request.getParameter("year");
    String Gender = request.getParameter("gender");
    String button = request.getParameter("button");

    demo1 A = new demo1();

    if ("AddStudent".equals(button)) {
        int a = A.doinsert1(RollNumber, Name, Branch, Year, Gender); 
        if (a > 0) {
            response.sendRedirect("addstudent.jsp?msg=Successfully Inserted");
        } else {
            response.sendRedirect("addstudent.jsp?msg=Insertion failed");
        }
    } 
    else if ("AddFaculty".equals(button)) {
        int a = A.doinsert2(RollNumber,Name, Branch, Year, Gender); 
        if (a > 0) {
            response.sendRedirect("addfaculty.jsp?msg=Successfully Inserted");
        } else {
            response.sendRedirect("addfaculty.jsp?msg=Insertion failed");
        }
    } 
    else if ("UpdateStudent".equals(button)) {
        int a = A.update1( Name, Branch, Year, Gender,RollNumber); 
        if (a > 0) {
            response.sendRedirect("updatestudent.jsp?msg=Successfully Updated");
        } else {
            response.sendRedirect("updatestudent.jsp?msg=Updation failed");
        }
    } 
    else if ("UpdateFaculty".equals(button)) {
        int a = A.update2( Name, Branch, Year, Gender,RollNumber); 
        if (a > 0) {
            response.sendRedirect("updatefaculty.jsp?msg=Successfully Updated");
        } else {
            response.sendRedirect("updatefaculty.jsp?msg=Updation failed");
        }
    } 
    else if ("DeleteStudent".equals(button)) { 
        int b = A.deletestudent(RollNumber);
        if (b > 0) {
            response.sendRedirect("deletestudent.jsp?msg=Successfully deleted");
        } else {
            response.sendRedirect("deletestudent.jsp?msg=There is no record");
        }
    } 
    else if ("DeleteFaculty".equals(button)) {
        int b = A.deletefaculty(RollNumber);
        if (b > 0) {
            response.sendRedirect("deletefaculty.jsp?msg=Successfully deleted");
        } else {
            response.sendRedirect("deletefaculty.jsp?msg=There is no record");
        }
    }
%>
