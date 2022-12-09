<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch By Id</title>
</head>
<body>
	<form:form method="post" action="fetch">
		<table>
			<tr>
				<td>Id :</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Fetch" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>