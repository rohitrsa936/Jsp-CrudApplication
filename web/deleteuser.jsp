<%-- 
    Document   : deleteuser
    Created on : Jan 28, 2023, 5:04:22 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dao.UserDao"%>
<jsp:useBean id="u" class="bean.User" ></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>