<%-- 
    Document   : index
    Created on : Jan 28, 2023, 12:47:52 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String email=(String)session.getAttribute("email");
            if(email==null)
           {
             response.sendRedirect("index.jsp");
           }
        %>
       <center> <img src="Welcome.jpg" class="img-fluid" alt="Responsive image"></center> 
        <font size="5"><center>to the worlds of dream</center></font><br/>
       <center> <a href="adduserform.jsp">Add User</a>
           <a href="viewusers.jsp">View Users</a><br/>
           
       </center>
    </body>
</html>
