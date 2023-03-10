<%-- 
    Document   : edituser
    Created on : Jan 28, 2023, 5:00:21 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="dao.UserDao"%>
<jsp:useBean id="u" class="bean.User" ></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=UserDao.update(u);
    response.sendRedirect("viewusers.jsp");
%>