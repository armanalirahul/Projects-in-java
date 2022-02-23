<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
</head>
<body style="background-color: #FFF9C4">

	<div align="center" style="margin-top: 1%;">
		<h1>Write a Note</h1>
	</div>

	<div align="center">
		<div class="card shadow bg-white"
			style="width: 50rem; height: 30rem; margin-top: 2%;">

			<div class="card-body">

				<h5 class="card-title">Something to be done</h5>
				<br> <img class="img-responsive" width="200px" height=""
					src="https://img.icons8.com/external-icongeek26-outline-gradient-icongeek26/344/external-note-documents-icongeek26-outline-gradient-icongeek26.png">

				<p class="card-text" style="margin-top: 3%;">Using this app you
					can add your notes of daily and add any moment for action for work
					life and also delete, update your note if you want change init as
					per your need.</p>
				<div align="center">
					<a href="addnote.jsp" class="btn btn-primary"
						style="margin-top: 4%; width: 50mm;">Add</a>
				</div>
			</div>
		</div>
		<div style="margin-top: 2.7%;">
			<%@include file="footer.jsp"%>
		</div>
	</div>
</body>
</html>