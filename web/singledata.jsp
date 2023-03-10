<%-- 
    Document   : singledata
    Created on : Feb 5, 2023, 9:33:58 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User data</title>
    </head>
    <body>
          <%--<%
            String email=(String)session.getAttribute("email");
            if(email==null)
           {
             response.sendRedirect("index.jsp");
           }
        %>
        <%@page import="bean.User,dao.UserDao,java.util.*"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <center><h1>User Data</h1></center>
        
        <%String id=request.getParameter("id");
          User u=UserDao.getRecordById(Integer.parseInt(id));
          request.setAttribute("u",u);
         %>--%>
         
        
        <table border="1" width="90%">
            <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
                <th>Sex</th><th>Country</th></tr>
            
          
               <%--<tr><td>${u.getId()}</td> <td>${u.getName()}</td><td>${u.getPassword()}</td>
             <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
          </tr>--%>
       
          </table>
        <br/><center><a href="adduserform.jsp">Add New User</a></center>
            
        
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
        <center><h1>User Data</h1></center>
        
        <%String id=request.getParameter("id");
          User u=UserDao.getRecordById(Integer.parseInt(id));
          request.setAttribute("u",u);
         %>
         
        <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Your data</title>
  </head>
  <body

   

    <!-- Optional JavaScript -->
       
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
     <!--<font size="20"><center>Welcome</center></font>
       <font size="5"><center>to the worlds of dream</center></font>-->
  
      <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Password</th>
      <th scope="col">Email</th>
      <th scope="col">Sex</th>
       <th scope="col">Country</th>
       
    </tr>
  </thead>
  <tbody>
      
    <tr><td>${u.getId()}</td> <td>${u.getName()}</td><td>${u.getPassword()}</td>
             <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
           
    
  </tbody>
</table>
   <center><a href="adduserform.jsp">Add New User</a></center>    
  
  
  </body>
</html>


