<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update By Id</title>
</head>
<body>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach var="data" items="${list}">
			<tr>
				<td>${data.id}</td>
				<td>${data.fname}</td>
				<td>${data.lname}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>