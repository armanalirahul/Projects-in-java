<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<form:form method="post" action="save">
		<table>
			<tr>
				<td>First Name :</td>
				<td><form:input path="fname" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><form:input path="lname" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>