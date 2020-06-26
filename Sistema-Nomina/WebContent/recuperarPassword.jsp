<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Recuperar contraseña</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/reset.css">
</head>
<body class="is-preload">


	<!-- Signup Form -->
	<div class="containerF">
		<div>
			<center>
				<h2>
					<span>Recuperar contraseña</span>
				</h2>
			</center>
		</div>
		<%
			String error = (String) request.getAttribute("error");
		if (error.equals("Si")) {
			out.print("<p>Ingreso un correo no registrada</p>");
		}
		else if(error.equals("No"))
		{
			out.print("<p>Se ha enviado un correo con la informacion, en unos momentos le llegara</p>");
		}

		%>
		<form class="form__reg" method="get"
			action="/Sistema-Nomina/recuperarPassword">
			<!--<input type="text" name="Nombre" placeholder="&#128100;Nombre" required autofocus /> <br/>
					<input type="text" name="Apellido" placeholder="&#128100;Apellido" required /><br/>-->
			<!--<input type="text" name="nombre" placeholder="&#9998; Nombre" required /> <br/>
					<input type="text" name="apellido" placeholder="&#9998; Apellido" required /> <br/>
					-->
			<p>Por favor, inserte el correo asociado al usuario</p>
			<input type="email" id="email" name="email"
				placeholder="&#9993; Correo electrónico" required maxlength="30" />



			<div class="btn__form">
				<input class="btn__submit" type="submit" value="Enviar correo"></input>
				<input class="btn__reset" type="reset" value="Limpiar"></input>
			</div>

		</form>
	</div>


	<!-- Scripts Que permite ver la imagen de fondo movil-->
	<script src="js/main.js"></script>

	<div id="bg">
		<div class="visible top"
			style="background-image: url(&quot;img/portfolio/imagen/bg01.jpg&quot;); background-position: center center;">
		</div>

		<div class=""
			style="background-image: url(&quot;img/portfolio/imagen/bg02.jpg&quot;); background-position: center center;"></div>

		<div class=""
			style="background-image: url(&quot;img/portfolio/imagen/bg03.jpg&quot;); background-position: center center;"></div>

	</div>

</body>
</html>