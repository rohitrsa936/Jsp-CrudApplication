<%-- 
    Document   : index
    Created on : Feb 5, 2023, 10:01:52 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email=(String)session.getAttribute("email");
    if(email!=null)
    {
    response.sendRedirect("home.jsp");
    }
    String status=request.getParameter("status");
    if(status!=null)
    {  
       if(status.equals("false"))
       {
         out.println("Incorrect Email or Password");
       }
       else
       {
       out.println("Something went Wrong");
}
    }

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
      
        <div class="card text-white bg-dark mb-3" style="max-width: 25rem;">
            <center><div class="card-header"><h1>Login</h1></div></center>
        <div class="card-body">    
     
    <form action="loginRequestHandler.jsp" >
    <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
  
  </form>
   </div>        
     </div>
      
      </div>
      
  </body>
</html>


<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <font size="20"><center>Welcome</center></font>
       <font size="5"><center>to the worlds of dream</center></font>
        <form action="loginRequestHandler.jsp" >
            
         <center> <table>
        <tr><td>Email:</td><td><input type="email" name="email"></td></tr>
        <tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
       <tr><td></td><td colspan="2"><input type="submit" value="Login"/></td></tr>
       </table></center>
      
        </form>
    </body>
</html>-->
