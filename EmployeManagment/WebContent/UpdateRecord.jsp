<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<% PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
ps.setString(1, request.getParameter("fname"));
ps.setString(2, request.getParameter("lname"));
ps.setString(3, request.getParameter("address"));
ps.setString(4, request.getParameter("email"));
ps.setString(5, request.getParameter("phoneNo"));
ps.setString(6, request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("UpdateEmployee.jsp");
%>

</body>
</html>