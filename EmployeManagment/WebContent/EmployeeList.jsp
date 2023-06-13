<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
		Statement st = (Statement) application.getAttribute("list");
		ResultSet rst = st.executeQuery("select * from employeedata");
	%>
	<div class="container-fluid bg padding">
		<ul class="list-group col-11 ms-auto me-auto">
			<li class="list-group-item">
				<div class="row">
					<div class="col">Eid</div>
					<div class="col">FirstName</div>
					<div class="col">LastName</div>
					<div class="col">Address</div>
					<div class="col">Email</div>
					<div class="col">PhoneNo</div>
					<div class="col">Edit | Delete</div>
				</div>
			</li>
			<%
				while (rst.next()) {
			%>
			<li class="list-group-item">
				<div class="row">
					<div class="col"><%=rst.getString(1)%></div>
					<div class="col"><%=rst.getString(2)%></div>
					<div class="col"><%=rst.getString(3)%></div>
					<div class="col"><%=rst.getString(4)%></div>
					<div class="col"><%=rst.getString(5)%></div>
					<div class="col"><%=rst.getString(6)%></div>
					<div class="col">
						<a href="ConfirmDelete.jsp?eid=<%=rst.getString(1)%>"><i
							class="fa-solid fa-trash"></i>delete</a> | <a
							href="UpdateEmployeeRecord.jsp?eid=<%=rst.getString(1)%>"><i
							class="fa-solid fa-user-pen"></i>update</a>
					</div>
				</div>
			</li>
			<%
				}
			%>
		</ul>
	</div>
</body>
</html>