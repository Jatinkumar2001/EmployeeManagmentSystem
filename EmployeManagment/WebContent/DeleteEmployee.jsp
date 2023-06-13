<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<div class="container-fluid bg flex">
<form action="ConfirmDelete.jsp" method="post" class="inputForm">
<div class="form-group row">
<div class="col-md-12">
<label for="eid" >Employee ID</label><span class="star">*</span>
    <input type="text" class="form-control" placeholder="Enter Employee ID Here" aria-label="eid" name="eid" id="eid" required>
    <span class="msg"></span>
  </div>
  <div class="form-group row">
  <div class="col-md-12 ">
   <button type="submit" class="btn btn-primary float-end mt-3 col-md-3">Delete</button>
  </div>
</div>
<div class="form-group row"><span class="msg"></span></div>
</div>
</form></div>

</body>
</html>