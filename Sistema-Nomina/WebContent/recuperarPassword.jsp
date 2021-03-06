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
<!-- Libreria de verificaion de Inputs -->
<script type="text/javascript" src="js/editcheck.js"></script>
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
		<!-- Funciona como validacion del envio correo o dato incorrecto -->
		<%
			String error = (String) request.getAttribute("error");
		if (error != null)
			if (error.equals("Si")) {
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>No se ha enviado!</strong> EL correo proporcionado no es valido o no existe "
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
			} else if (error.equals("No")) {
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>Se ha enviado!</strong> En unos momentos llegara un correo con informacion de su contraseña"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
			}
		%>
		<form class="form__reg" method="get"
			action="/Sistema-Nomina/recuperarPassword"
			onsubmit="return valforms(this)">
			<!--<input type="text" name="Nombre" placeholder="&#128100;Nombre" required autofocus /> <br/>
					<input type="text" name="Apellido" placeholder="&#128100;Apellido" required /><br/>-->
			<!--<input type="text" name="nombre" placeholder="&#9998; Nombre" required /> <br/>
					<input type="text" name="apellido" placeholder="&#9998; Apellido" required /> <br/>
					-->
			<p>Por favor, inserte el correo asociado al usuario</p>
			<input type="text" id="email" name="email"
				placeholder="&#9993; Correo electrónico"
				editcheck="minlen=5=&iexcl;Ingrese un correo valido por ejemplo alpha@ejemplo.com;type=email"
				maxlength="30" onChange="return valforms(this.form,this)" required="required" />



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