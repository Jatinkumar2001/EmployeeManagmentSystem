<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<div class="container-fluid bg flex">
<form action="insertEmployee.jsp" method="post" class="inputForm">
<div class="form-group row mb-4">
<div class="col-md-8">
<label for="eid" >Employee ID</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Employee ID" aria-label="eid" name="eid" id="eid" required>
    <span class="msg"></span>
  </div>
</div>

<div class="form-group row mb-4">
  <div class="col-md-6 ">
  <label for="fname" >First Name</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="First name" aria-label="First name" name="fname" id="fname" required>
    <span class="msg"></span>
  </div>
  <div class="col-md-6">
  <label for="lname" >Last Name</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="lname" id="lname" required>
    <span class="msg"></span>
  </div></div>
  
  <div class=" form-group row mb-4">
  <div class="col-md-12">
  <label for="address" >Addess</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Address" aria-label="address" name="address" id="address" required>
    <span class="msg"></span>
  </div></div>  
  <div class=" form-group row mb-4">
  <div class="col-md-12">
  <label for="email" >Email</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Email" aria-label="address" name="email" id="email" required>
    <span class="msg"></span>
  </div></div>
  <div class=" form-group row mb-4">
  <div class="col-md-8 ">
  <label for="phoneNo" >PhoneNo</label><span class="star">*</span>
    <input type="tel"  class="form-control" placeholder="PhoneNO" aria-label="phoneno" name="phoneNo" id="phoneNo" required>
    <span class="msg"></span>
  </div>
  </div>
<div class=" form-group row mb-4">
  <div class="col ">
   <button type="submit" class="btn btn-primary col-md-3 float-end">Save</button>
  </div>
  </div>
</form>
</div>

</body>
</html>