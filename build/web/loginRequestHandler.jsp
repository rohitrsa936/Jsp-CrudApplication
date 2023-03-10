<%-- 
    Document   : loginRequestHandler
    Created on : Feb 5, 2023, 10:20:49 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dao.UserDao"%>
<jsp:useBean id="u" class="bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int status=UserDao.check(u);
    if(status==1)
    {
    session.setAttribute("email",u.getEmail());
    response.sendRedirect("home.jsp");
    }
    else
    {
    response.sendRedirect("index.jsp?status=false");
    }
 %>   

