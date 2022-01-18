<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRM</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
/* Style the navigation bar */
.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

/* Navbar links */
.navbar a {
  float: left;
  text-align: center;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

/* Navbar links on mouse-over */
.navbar a:hover {
  background-color: #000;
}

/* Current/active navbar link */
.active {
  background-color: #04AA6D;
}

/* Add responsiveness - will automatically display the navbar vertically instead of horizontally on screens less than 500 pixels */
@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}

.topic{
font-size:60px;
color:white;
background-color:#00bcd4;
height:80px;

}



.table_responsive {
	max-width: 900px;
	border: 1px solid #00bcd4;
	background-color: #efefef33;
	padding: 15px;
	overflow: auto;
	margin: auto;
	border-radius: 4px;
}

table {
	width: 100%;
	font-size: 13px;
	color: #444;
	white-space: nowrap;
	border-collapse: collapse;
}

table>thead {
	background-color: #00bcd4;
	color: #fff;
}

table>tbody>tr {
	background-color: #fff;
	transition: 0.3s ease-in-out;
}
.del:hover{
background-color:red;}

table>thead th {
	padding: 15px;
}

table th, table td {
	border: 1px solid #00000017;
	padding: 10px 15px;
}

table>tbody>tr:nth-child(even) {
	background-color: rgb(238, 238, 238);
}

table>tbody>tr:hover {
	filter: drop-shadow(0px 2px 6px #0002);
}

.but{
background-color:red;
}
</style>
<body>
<div class="topic">
Customer Relationship Management</div>

<div class="navbar">
  <a class="active" href="/"><i class="fa fa-fw fa-home"></i> Home</a>
  
  <a href="addCustomer"><i class="fa fa-fw fa-user"></i> Add Customer</a>
</div>


<p><%=session.getAttribute("msg")%></p>


<div class="table_responsive">
		<table border="2" width="70%" cellpadding="2" align="center">
			<thead>
				<tr>
				<th><b>Id</b></th>
					<th><b>First Name</b></th>
					<th><b>Last Name</b></th>
					<th><b>Email</b></th>
					<th colspan="2"><b>Action</b></th>
					
				</tr>
			</thead>
			

	<c:forEach var ="i" items="${customer}" >		
				<tr align="center">
					<td><c:out value = "${i.getId() }"></c:out></td>
					<td><c:out value = "${i.getFirstName() }"></c:out></td>
					<td><c:out value = "${i.getLastName() }"></c:out></td>
					<td><c:out value = "${i.getEmail() }"></c:out></td>
				 	<td colspan="2"><a href = "delete/${i.getId()}"><button class="del"><i class="fa fa-trash"></i>Delete</button></a>
					<a href="edit/${i.getId()}"><button><i class="fa fa-edit"></i>Update</button></a></td>
					
				</tr>
		</c:forEach>

		</table>
	</div>

</body>
</html>