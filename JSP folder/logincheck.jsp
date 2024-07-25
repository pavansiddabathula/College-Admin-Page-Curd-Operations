<%@page import="Demo.demo1"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String submittype = request.getParameter("submit");
    demo1 A = new demo1();

    if ("Student".equals(submittype))
    {
        String user = A.loginCheck1(username, password);
        if (user != null) 
        {
            session.setAttribute("user", user);
            response.sendRedirect("studenthome.jsp");
        }
        else 
        {
            response.sendRedirect("studentlogin.jsp?msg=AuthenticationFailed");
        }
    } 
    else if ("Faculty".equals(submittype)) 
    {
        String user = A.loginCheck2(username, password);
        if (user != null) 
        {
            session.setAttribute("user", user);
            response.sendRedirect("facultyhome.jsp");
        } 
        else 
        {
            response.sendRedirect("facultylogin.jsp?msg=AuthenticationFailed");
        }
    } 
    else if("Admin".equals(submittype)) 
    {
        String user = A.loginCheck3(username, password);
        if (user != null) 
        {
            session.setAttribute("user", user);
            response.sendRedirect("adminhome.jsp");
        } 
        else 
        {
            response.sendRedirect("adminlogin.jsp?msg=AuthenticationFailed");
        }
    }
%>
