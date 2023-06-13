<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<% 
PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
ps.setString(1, request.getParameter("eid"));
ps.setString(2, request.getParameter("fname"));
ps.setString(3, request.getParameter("lname"));
ps.setString(4, request.getParameter("address"));
ps.setString(5, request.getParameter("email"));
ps.setString(6, request.getParameter("phoneNo"));
ps.executeUpdate();
%>
<div class="bg container-fluid flex">
<p>Employee added succesfully<p></div>
</body>
</html>