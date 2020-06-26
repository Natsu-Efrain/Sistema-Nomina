<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Eventually by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Login</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="css/main.css" />
<script type="text/javascript" src="js/editcheck.js"></script>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<h1>Bienvenido</h1>
		<p>Consulta estados de nómina y mucho más</p>
	</header>
	<!-- Se agrego verificacion en los campos de email y contraseña -->
	<!-- Signup Form -->
	<%
		String error = (String) request.getAttribute("error");
	if (error != null) {
		out.print("<p>Ingreso un correo  o contraseña no registrada</p>");
	}
	%>
	<form method="get" action="/Sistema-Nomina/Login"
		onsubmit="return valforms(this)">
		<input type="text" name="email" id="email"
			placeholder="Correo electrónico" required="required" maxlength="30"
			onChange="return valforms(this.form,this)" editcheck="type=email">
		<br> <input type="password" name="password" id="password"
			placeholder="Contraseña" required="required" maxlength="20" /> <br>
		<input type="submit" value="Entrar" />

	</form>
	<p>
		¿Olvidaste tu contraseña? <a href="recuperarPassword.jsp">Haz clic
			aquí</a>
	</p>

	<!-- Scripts -->
	<script src="js/main.js"></script>

	<div id="bg">
		<div class="visible top"
			style="background-image: url(&quot;img/portfolio/imagen/bg01.jpg&quot;); background-position: center center;"></div>
		<div class=""
			style="background-image: url(&quot;img/portfolio/imagen/bg02.jpg&quot;); background-position: center center;"></div>
		<div class=""
			style="background-image: url(&quot;img/portfolio/imagen/bg03.jpg&quot;); background-position: center center;"></div>
	</div>

</body>
</html>