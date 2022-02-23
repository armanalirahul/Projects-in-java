<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
</head>
<body style="background-color: #FFF9C4">
	<div class="container" align="center" style="margin-top: 1%;">
		<h1>Please fill your note detail</h1>
	</div>
	<br>
	<div class="container">
		<form action="save" method="post">

			<div class="form-group">
				<label for="title">Note title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here" />

			</div>

			<br>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"></textarea>


			</div>
			<br>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary" style="width: 10cm;">Add</button>
			</div>
		</form>
	</div>
	<div style="margin-top: 3.2%;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>