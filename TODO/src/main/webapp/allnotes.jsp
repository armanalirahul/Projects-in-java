<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
</head>
<body style="background-color: #F0F4C3;">

	<div align="center" style="margin-top: 1%;">
		<h1 class="text-uppercase">All Notes:</h1>
	</div>

	<div>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="container">
					<div class="card shadow bg-white">
						<img class="card-img-top m-4 mx-auto" style="max-width: 100px;"
							src="https://img.icons8.com/external-icongeek26-outline-gradient-icongeek26/344/external-note-documents-icongeek26-outline-gradient-icongeek26.png"
							alt="Card image cap">
						<div class="card-body px-5">
							<div align="left">
								<h5 class="card-title"><%=note.getTitle()%></h5>
								<p class="card-text">
									<%=note.getContent()%>
								</p>
							</div>
							<br>
							<p align="right">
							
								<b class="text-primary" align="right"> <%=note.getAddedDate()%></b>
							
							</p>
							<div class="container text-center mt-2">

								<a href="delete?note_id=<%=note.getId()%>"
									class="btn btn-danger">Delete</a> <a
									href="edit.jsp?note_id=<%=note.getId()%>"
									class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
					<br>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
	<div style="margin-top: 2.7%;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>