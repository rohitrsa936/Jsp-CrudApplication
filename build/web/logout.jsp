<%-- 
    Document   : logout
    Created on : Feb 6, 2023, 9:49:00 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");

%>