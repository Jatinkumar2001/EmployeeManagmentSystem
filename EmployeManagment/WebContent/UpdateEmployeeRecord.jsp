<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid bg flex">
<% PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
ps.setString(1, request.getParameter("eid"));
ResultSet rst=ps.executeQuery();
if(rst.next())
{
%>

<form action="UpdateRecord.jsp" method="post" class="inputForm">
<div class="form-group row mb-4">
<div class="col-md-8">
<label for="eid" >Employee ID</label><span class="star">*</span>
    <input type="text" class="form-control" value="<%=rst.getInt(1) %>" placeholder="Employee ID" aria-label="eid" name="eid" id="eid" readonly>
  </div>
</div>

<div class="form-group row mb-4">
  <div class="col-md-6 ">
  <label for="fname" >First Name</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="First name" value="<%=rst.getString(2)%>" aria-label="First name" name="fname" id="fname">
   
  </div>
  <div class="col-md-6">
  <label for="lname" >Last Name</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Last name" value="<%=rst.getString(3)%>"  aria-label="Last name" name="lname" id="lname">
    
  </div></div>
  
  <div class=" form-group row mb-4">
  <div class="col-md-12">
  <label for="address" >Addess</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Address" value="<%=rst.getString(4)%>" aria-label="address" name="address" id="address">
  
  </div></div>  
  <div class=" form-group row mb-4">
  <div class="col-md-12">
  <label for="email" >Email</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Email" value="<%=rst.getString(5)%>" aria-label="email" name="email" id="email" >
    
  </div></div>
  <div class=" form-group row mb-4">
  <div class="col-md-8 ">
  <label for="phoneNo" >PhoneNo</label><span class="star">*</span>
    <input type="tel"  class="form-control" placeholder="PhoneNO" value="<%=rst.getString(6)%>" aria-label="phoneno" name="phoneNo" id="phoneNo">
 
  </div>
  </div>
<div class=" form-group row mb-4">
  <div class="col ">
   <button type="submit" class="btn btn-primary col-md-3 float-end">Update Record</button>
  </div>
  </div>
</form>
<%}
else {%>
<p>Employee with id <%=request.getParameter("eid") %> does not exist </p>
<%} %>
</div>


</body>
</html>