<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/style.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script src="JS/script.js"></script>
<script src="https://kit.fontawesome.com/19a43a1b2b.js" crossorigin="anonymous"></script>
<title>Employee Management System</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-dark">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item "><a class="nav-link text-light"
						aria-current="page" href="addEmployee.jsp">Add Employee</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="UpdateEmployee.jsp">Update
							Employee</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="DeleteEmployee.jsp">Delete
							Employee</a></li>
					<li class="nav-item text-light"><a class="nav-link text-light"
						href="EmployeeList.jsp">Employee List</a></li>
				</ul>
				<form class="d-flex" role="search" action="Search.jsp">
					<input class="form-control me-2" type="search"
						placeholder="Enter Employee ID" aria-label="Search" name="searchEid">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>