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


<title>Datos Personales</title>
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
						personales</a> <a href="#" data-toggle="modal"
						data-target="#exampleModal">Empleados</a> <a href="nomina.html">Calculo
						Nomina</a> <a href="finiquito.html">Finiquitos y Liquidaciones</a> <a
						href="catalogoMenu.html">Catálogo</a>
				</div>

			</section>
		</nav>
		<!--HEADER DE DATOS PERSONALES-->
		<section class="about-us">
			<div class="contenedor">
				<section class="contenido-header-generic">
					<section class="textos-header">
						<h1>
							Datos personales <br> Recursos Humanos
						</h1>
					</section>
					<img src="img/portfolio/imagen/personalinfo.svg">

				</section>
			</div>
		</section>

	</header>

	<div class="container" style="padding-top: 30px;">

		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">Informacion Personal</h4>
					<div class="card-body">

						<div class="form-group row">
							<label for="idEmpleado" class="col-sm-4 col-form-label">Id
								Empleado</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="idEmpleado"
									disabled value="${IdEmpleado}" >
							</div>

							<label for="nombre" class="col-sm-4 col-form-label">Nombre</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="nombre" disabled
									value="${nombre}">
							</div>

							<label for="apellidoP" class="col-sm-4 col-form-label">Apellido
								Paterno</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="apellidoP" disabled
									value="${apellidoP}">
							</div>

							<label for="apellidoM" class="col-sm-4 col-form-label">Apellido
								Materno</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="apellidoM" disabled
									value="${apellidoM}">
							</div>

							<label for="numTelefono" class="col-sm-4 col-form-label">Numero
								Telefono</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="numTelefono"
									disabled value="${numTelefono}">
							</div>
						</div>

					</div>
				</div>
			</div>


			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">Direccion</h4>
					<div class="card-body">

						<div class="form-group row">
							<label for="calle" class="col-sm-4 col-form-label">Calle</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="calle" disabled
									value="${calle}">
							</div>

							<label for="numExterior" class="col-sm-4 col-form-label">Numero
								Ext</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="numeroExterior"
									disabled value="${numeroExterior}">
							</div>

							<label for="colonia" class="col-sm-4 col-form-label">Colonia</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="colonia" disabled
									value="${colonia}">
							</div>

							<label for="delegacion" class="col-sm-4 col-form-label">Delegacion</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="delegacion" disabled
									value="${delegacion}">
							</div>

							<label for="estado" class="col-sm-4 col-form-label">Estado</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="estado" disabled
									value="${estado}">
							</div>

							<label for="CP" class="col-sm-4 col-form-label">C.P</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="CP" disabled
									value="${CP}">
							</div>

						</div>

					</div>
				</div>
			</div>


			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">Datos Empresariales</h4>
					<div class="card-body">

						<div class="form-group row">
							<label for="claseE" class="col-sm-4 col-form-label">Clase</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="claseE" disabled
									value="${claseE}">
							</div>

							<label for="tipoPago" class="col-sm-4 col-form-label">Tipo
								Pago</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="tipoPago" disabled
									value="${tipoPago}">
							</div>

							<label for="fechaIngreso" class="col-sm-4 col-form-label">Fecha
								Ingreso</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="fechaIngreso"
									disabled value="${fechaIngreso}">
							</div>

							<label for="puesto" class="col-sm-4 col-form-label">Puesto</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="puesto" disabled
									value="${puesto}">
							</div>

							<label for="area" class="col-sm-4 col-form-label">Area</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="area" disabled
									value="${area}">
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>

		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#edicionDatos">Editar Información</button>
		<br> <br>



	</div>


	<!-- Modal para la edicion de Datos -->

	<div class="portfolio-modal modal fade" id="edicionDatos"
		data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="portfolioModal1Label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edición de
						Información</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form method="get" action="/Sistema-Nomina/Index" onsubmit="return valforms(this)">
						<div class="form-group row">
					
							<label for="numTelefono" class="col-sm-4 col-form-label">Numero
								Telefono:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="numTelefono"
									name="numTelefono" onChange="return valforms(this.form,this)" editcheck="minlen=10=&iexcl;Ingrese un numero de telefono valido;type=int" maxlength="10">
									
							</div>
							<br> <br> <label for="calle"
								class="col-sm-4 col-form-label">Calle</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="calle" name="calle" onChange="return valforms(this.form,this)" editcheck="minlen=10=&iexcl;Ingrese una calle valida;type=ALPHA" maxlength="50">
							</div>
							<br> <br> <label for="numExterior"
								class="col-sm-4 col-form-label">Numero Ext</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="numeroExterior"
									name="numeroExterior" onChange="return valforms(this.form,this)" editcheck="type=int=Ingresa un numero de exterior valido;cvt=~" maxlength="4" >
							</div>
							<br> <br> <label for="colonia"
								class="col-sm-4 col-form-label">Colonia</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="colonia"
									name="colonia" onChange="return valforms(this.form,this)" editcheck="type=ALPHA=Ingrese una delegacion valida;cvt=~" maxlength="25">
							</div>
							<br> <br> <label for="delegacion"
								class="col-sm-4 col-form-label">Delegacion</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="delegacion"
									name="delegacion" onChange="return valforms(this.form,this)" editcheck="type=ALPHA=Ingrese una delegacion valida;cvt=~" maxlength="25">
							</div>
							<br> <br> <label for="estado"
								class="col-sm-4 col-form-label">Estado</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="estado"
									name="estado" onChange="return valforms(this.form,this)" editcheck="type=ALPHA=Ingrese una estado valida;cvt=~" maxlength="25">
							</div>
							<br> <br> <label for="CP"
								class="col-sm-4 col-form-label">C.P</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="CP" name="CP" onChange="return valforms(this.form,this)" editcheck="type=int=Ingrese una codigo postal valido;cvt=~" maxlength="5">
							</div>

							<div class="modal-footer padd-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
								<button type="submit" class="btn btn-primary">Aceptar</button>
							</div>


						</div>
					</form>
				</div>


			</div>
		</div>
	</div>



	<script src="https://kit.fontawesome.com/2480de16dd.js"
		crossorigin="anonymous"></script>

	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-to-top d-lg-none position-fixed ">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
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