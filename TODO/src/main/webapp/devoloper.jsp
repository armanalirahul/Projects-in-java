<!DOCTYPE html>
<%@include file="navbar.jsp"%>
<html>

<head>

<title>Bootstrap Example</title>


</head>

<body style="background-color: #F0F4C3;">
	<br>
	<div class="container" style="margin-top: 5%;">
		<div class="row"
			style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5); transition: 0.3s; background-color: white;">

			<div class="col-sm-4">

				<div align="center" style="margin-top: 10px;">

					<img class="img-circle" alt=""
						src="https://2.bp.blogspot.com/-iOrL-gLvMPU/YM8XK9u588I/AAAAAAAAJ9Y/YAtDCn1rPpsVm08Ene-bL9yEUQq1R6xhACK4BGAYYCw/s113-pf/arman.jpeg"
						width="200" height="200">

				</div>

				<div align="center">

					<hr>
					<p style="font-size: large; margin-top: 10px;">Arman Ali -
						@tcser</p>
					<hr>

					<p>armanalirahul@gmail.com</p>

					<p>java Expert</p>

					<p>Ducat Institute.</p>

				</div>

			</div>

			<div class="col-sm-8" align="center">

				<div class="form-group" style="margin-top: 110px;">

					<label for="name">Name</label>
					<p>
						<b>Arman Ali</b>
					</p>

				</div>

				<div class="form-group">

					<label for="email">Email address</label>
					<p>
						<b>armanalirahul@gmail.com</b>
					</p>
					<label for="study">Qualification</label>
					<p>
						<b>BCA, MCA</b>
					</p>
					<div align="center" style="margin-top: 10%">
						<p>- Thank you for visiting my profile -</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 6%;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>