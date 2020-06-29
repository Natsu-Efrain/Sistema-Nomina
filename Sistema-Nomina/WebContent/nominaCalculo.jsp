<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Calculo Nomina</title>
<link href="css/freelancer.css" rel="stylesheet">
<link href="css/estilos.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;700&display=swap"
	rel="stylesheet">
<!-- Libreria de verificaion de Inputs -->
<script type="text/javascript" src="js/editcheck.js"></script>
</head>
<body>
	<header>
		<nav>
			<section class="contenedor nav">
				<div class="logo">
					<img src="img/portfolio/imagen/logo.png">
				</div>
				<div class="enlaces-header">
					<a href="menu.jsp">Inicio</a> <a href="/Sistema-Nomina/Index">Datos
						personales</a> <a href="nomina.jsp">Calculo Nomina</a> <a
						href="finiquitoLiquidacion.jsp">Finiquitos y Liquidaciones</a> <a
						href="catalogoMenu.jsp">Catálogo</a> <a
						href="/Sistema-Nomina/edicionSistema">Sistema</a>
				</div>

			</section>
		</nav>
		<!--HEADER DE DATOS PERSONALES-->
		<section class="about-us">
			<div class="contenedor">
				<section class="contenido-header-generic">
					<section class="textos-header">
						<h1>
							Calculo Nomina <br>
						</h1>
					</section>
					<img src="img/portfolio/imagen/personalinfo.svg">

				</section>
			</div>
		</section>

	</header>

	<div class="container" style="padding-top: 30px;">

		<div class="row">


			<form method="get" action="/Sistema-Nomina/GenerarNomina"
				onsubmit="return valforms(this)">
				<div class="col-lg-4 mb-4">
					<div class="card h-100">
						<h4 class="card-header">Calculo de deducciones</h4>
						<div class="card-body">

							<div class="form-group row">
								<label for="idEmpleado" class="col-sm-4 col-form-label">Id
									Empleado</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="idEmpleado" name="idEmpleado">
								</div>

								<label for="nombre" class="col-sm-4 col-form-label">Faltas</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="faltas" name="faltas">
								</div>

								<label for="apellidoP" class="col-sm-4 col-form-label">Retardos</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="retardos" name="retardos">
								</div>


							</div>

						</div>
					</div>
				</div>


				<div class="col-lg-4 mb-4">
					<div class="card h-100">
						<h4 class="card-header">Calculo de percepciones</h4>
						<div class="card-body">

							<div class="form-group row">
								<label for="calle" class="col-sm-4 col-form-label">Horas</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="horas" 
										name="horas">
								</div>



							</div>

						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-4">
					<button type="submit" class="btn btn-primary">Generar</button>
				</div>
			</form>
			<div class="col-lg-4 mb-4">
			<form action="/Sistema-Nomina/GuardarNomina">
				<div class="card h-100">
					<h4 class="card-header">Nomina</h4>
					<div class="card-body">

						<div class="form-group row">
							<label for="idEmpleado" class="col-sm-4 col-form-label">Id
								Empleado:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="idEmpleado" name="idEmpleado" value="${idEmpleado}" disabled="disabled">
							</div>
							<br>
							<br> <label for="ISR" class="col-sm-4 col-form-label">ISR:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="ISR" name="ISR" value="${ISR}" disabled="disabled">
							</div>
							<br>
							<br> <label for="infonavit" class="col-sm-4 col-form-label">Infonavit:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="infonavit" name="infonavit" value="${infonavit}" disabled="disabled">
							</div>
							<br>
							<br> <label for="IMSS" class="col-sm-4 col-form-label">IMSS:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="IMSS" name="IMSS" value="${IMSS}" disabled="disabled">
							</div>
							<br>
							<br> <label for="faltasR" class="col-sm-4 col-form-label">Faltas:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="faltasR" name="Faltas" value="${Faltas}" disabled="disabled">
							</div>
							<br>
							<br> <label for="retardosR" class="col-sm-4 col-form-label">Retardos:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="retardosR" name="retardosR" value="${retardosR}" disabled="disabled">
							</div>
							<br>
							<br> <label for="prestamo" class="col-sm-4 col-form-label">Prestamo:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="prestamo" name="pretamo" value="${prestamo}" disabled="disabled">
							</div>
							<br>
							<br> <label for="fondoAhorro"
								class="col-sm-4 col-form-label">Fondo Ahorro:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="fondoAhorro" name="fondoAhorro" value="${fondoAhorro}" disabled="disabled">
							</div>
							<br>
							<br> <label for="horasER" class="col-sm-4 col-form-label">Horas
								Extra:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="horasER" name="horasER" value="${horasER}" disabled="disabled">
							</div>
							<br>
							<br> <label for="bonoProductividad"
								class="col-sm-4 col-form-label">Bono Productividad:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="bonoProductividad" name="bonoProductividad" value="${bonoProductivo}" disabled="disabled">
							</div>
							<br>
							<br> <label for="valesDespensa"
								class="col-sm-4 col-form-label">Vales de despensa:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="valesDespensa" name="valesDespensa" value="${valesDespensa}" disabled="disabled">
							</div>
							<br>
							<br> <label for="primaVacacional"
								class="col-sm-4 col-form-label">Prima Vacacional:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="primaVacacional" name="primaVacacional" value="${primaVacacional}" disabled="disabled">
							</div>
							<br>
							<br> <label for="aguinaldo" class="col-sm-4 col-form-label">Aguinaldo:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="aguinaldo" name="aguinaldo" value="${aguinaldo}" disabled="disabled">
							</div>
							<br>
							<br>

						</div>
						<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#edicionDatos">Guardar Nomina</button>
						<br> <br>



					</div>

</form>
	



					<script src="https://kit.fontawesome.com/2480de16dd.js"
						crossorigin="anonymous"></script>

					<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
					<div class="scroll-to-top d-lg-none position-fixed ">
						<a
							class="js-scroll-trigger d-block text-center text-white rounded"
							href="#page-top"> <i class="fa fa-chevron-up"></i>
						</a>
					</div>


					<!-- Bootstrap core JavaScript -->
					<script src="vendor/jquery/jquery.min.js"></script>
					<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

					<!-- Plugin JavaScript -->
					<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

					<!-- Contact Form JavaScript -->
					<script src="js/jqBootstrapValidation.js"></script>
					<script src="js/contact_me.js"></script>

					<!-- Custom scripts for this template -->
					<script src="js/freelancer.min.js"></script>
</body>
</html>