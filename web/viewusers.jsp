  <%-- 
    Document   : viewusers
    Created on : Jan 28, 2023, 4:16:21 PM
    Author     : PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User</title>
    </head>
    <body>
         <%-- <%
            String email=(String)session.getAttribute("email");
            if(email==null)
           {
             response.sendRedirect("index.jsp");
           }
        %>
        <%@page import="bean.User,dao.UserDao,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <center><h1>User List</h1></center>
        <%List<User> list=UserDao.getAllRecords();
        request.setAttribute("list",list);
        %>--%>
         
        
        <table border="1" width="90%">
            <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
                <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th><th>Show only your data</th>
            </tr>
                    
       <%-- <c:forEach items="${list}" var="u">
            
          <tr><td>${u.getId()}</td> <td>${u.getName()}</td><td>${u.getPassword()}</td>
             <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
             <td><a href="editform.jsp?id=${u.getId()}">Update</a></td> 
              <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
              <td><a href="singledata.jsp?id=${u.getId()}">Click Here</a></td>
             
          </tr>
              </c:forEach>--%>
        </table>
        
        <br/><center><a href="adduserform.jsp">Add New User</a><br/>
            <a href="logout.jsp">logout</a>
            
            </center>
            
        
    </body>
</html>-->
        <%
            String email=(String)session.getAttribute("email");
            if(email==null)
           {
             response.sendRedirect("index.jsp");
           }
        %>
        <%@page import="bean.User,dao.UserDao,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <center><h1>User List</h1></center>
        <%List<User> l=UserDao.getAllRecords();
        request.setAttribute("l",l);
        %>
        <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Login</title>
  </head>
  <body

   

    <!-- Optional JavaScript -->
       
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
     <!--<font size="20"><center>Welcome</center></font>
       <font size="5"><center>to the worlds of dream</center></font>-->
  <div class="container mt-4 h-100 d-flex justify-content-center" class="center">
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Password</th>
      <th scope="col">Email</th>
      <th scope="col">Sex</th>
       <th scope="col">Country</th>
        <th scope="col">Update</th>
         <th scope="col">Delete</th>
          <th scope="col">Show only your data</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${l}" var="u">
    <tr><td>${u.getId()}</td> <td>${u.getName()}</td><td>${u.getPassword()}</td>
             <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
             <td><a href="editform.jsp?id=${u.getId()}">Update</a></td> 
              <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
              <td><a href="singledata.jsp?id=${u.getId()}">Click Here</a></td>
    </c:forEach>       
  </tbody>
</table>
       
  </div>
  <center><a href="adduserform.jsp">Add User</a><br/>
            <a href="logout.jsp">logout</a>
            
            </center>
  </body>
</html>

