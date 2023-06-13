<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<% 
PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
ps.setString(1, request.getParameter("eid"));
ps.executeUpdate(); 
response.sendRedirect("DeleteEmployee.jsp");%>
</body>
</html>