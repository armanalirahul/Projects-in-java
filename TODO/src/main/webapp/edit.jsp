<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body style="background-color: #F0F4C3;">
	<div align="center" style="margin-top: 1%;">
		<h1>Edit your note</h1>
	</div>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>

	<form action="update" method="post">

		<input value="<%=note.getId()%>" name="noteId" type="hidden" />

		<div class="container">

			<label for="title">Note title</label> <input name="title" required
				type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter here"
				value="<%=note.getTitle()%>" /> <br>
			<label for="content">Note Content</label>
			<textarea name="content" required id="content"
				placeholder="Enter your content here" class="form-control"
				style="height: 300px;"><%=note.getContent()%>
					</textarea>
		</div>

		<div class="container text-center" style="margin-top: 2%;">
			<button type="submit" class="btn btn-success" style="width: 30%;">Save your note</button>
		</div>
	</form>
	<div style="margin-top: 4.3%;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>