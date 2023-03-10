<%-- 
    Document   : editform
    Created on : Jan 28, 2023, 4:43:31 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Form</title>
    </head>
    <body>
          <%
            String email=(String)session.getAttribute("email");
            if(email==null)
           {
             response.sendRedirect("index.jsp");
           }
        %>
         <%@page import="bean.User,dao.UserDao"%>
         <%String id=request.getParameter("id");
          User u=UserDao.getRecordById(Integer.parseInt(id));
         %>
    <center><h1>Edit Form</h1></center>
         <form action="edituser.jsp" method="post">
             <input type="hidden" name="id" value="<%=u.getId()%>"/>
        <center> <table>
                <tr><td>Name:</td><td><input type="text" name="name" value="<%=u.getName()%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%=u.getPassword()%>"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%=u.getEmail()%>"></td></tr>
        <tr><td>Sex:</td><td><input type="radio" name="sex" value="male"/>Male
                <input type="radio" name="sex" value="female"/>Female</td></tr>
        <tr><td>Country:</td><td><select name="country" style="width:155px">
                    <option>India</option>
                    <option>Pakistan</option> 
                    <option>Afghanistan</option>
                    <option>Japan</option>
                     <option>other</option>
                </select></td></tr>
        
       
       <tr><td></td><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
       </table></center>
        
         </form><br/>
        <center><a href="viewusers.jsp">View Users</a></center>
       
    </body>
</html>
