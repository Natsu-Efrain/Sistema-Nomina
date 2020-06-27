<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Edición Sistema</title>

<!-- Custom fonts for this theme -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link href="css/freelancer.css" rel="stylesheet">
<link href="css/estilos.css" rel="stylesheet">
</head>
<body id="page-top">

	<header>
		<nav>
			<section class="contenedor nav">
				<div class="logo">
					<img src="img/portfolio/imagen/logo.png">
				</div>
				<div class="enlaces-header">
					<a href="index.html">Inicio</a> <a href="datosPersonales.html">Datos
						personales</a> <a href="#" data-toggle="modal"
						data-target="#exampleModal">Empleados</a> <a href="nomina.html">Calculo
						Nomina</a> <a href="finiquito.html">Finiquitos y Liquidaciones</a> <a
						href="catalogoMenu.html">Catálogo</a>
				</div>

			</section>
		</nav>
		<br> <br>
	</header>

	<div class="row">
		<div class="col-3">
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">
				<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
					href="#v-pills-home" role="tab" aria-controls="v-pills-home"
					aria-selected="true">Agregar Empleado</a> <a class="nav-link"
					id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
					role="tab" aria-controls="v-pills-profile" aria-selected="false">Agregar
					Puesto</a> <a class="nav-link" id="v-pills-messages-tab"
					data-toggle="pill" href="#v-pills-messages" role="tab"
					aria-controls="v-pills-messages" aria-selected="false">Crear
					Area</a> <a class="nav-link" id="v-pills-messages-tab"
					data-toggle="pill" href="#editarUsuario" role="tab"
					aria-controls="editarUsuario" aria-selected="false">Editar
					Usuario</a>
			</div>
		</div>

		<div class="col-9">
			<div class="tab-content" id="v-pills-tabContent">

				<!-- Codigo de Primer Pill - 'Agregar Empleado' -->
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab">

					<form>
						<h2>Datos Personales</h2>

						<div class="form-row">
							<div class="col-md-3 mb-3">
								<label for="Nombre">Nombre</label> <input type="text"
									class="form-control" id="Nombre" value="" required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="ApellidoP">Apellido Paterno</label> <input
									type="text" class="form-control" id="ApellidoP" value=""
									required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="ApellidoM">Apellido Materno</label> <input
									type="text" class="form-control" id="ApellidoM" value=""
									required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="ApellidoM">Numero Telefono</label> <input
									type="number" class="form-control" id="ApellidoM" value=""
									required>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-5 mb-3">
								<label for="calle">Calle</label> <input type="text"
									class="form-control" id="calle" value="" required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="numExt">Numero Exterior</label> <input type="text"
									class="form-control" id="numExt" value="" required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="colonia">Colonia</label> <input type="text"
									class="form-control" id="colonia" value="" required>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-2 mb-3">
								<label for="calle">Delegacion</label> <input type="text"
									class="form-control" id="calle" value="" required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="numExt">Estado</label> <input type="text"
									class="form-control" id="numExt" value="" required>
							</div>
							<div class="col-md-1 mb-3">
								<label for="colonia">C.P.</label> <input type="number"
									class="form-control" id="colonia" value="" required>
							</div>
						</div>

					</form>
					<br>
					<h2>Datos Empresariales</h2>

					<form>
						<select class="custom-select my-1 mr-sm-2 col-2 mb-3"
							id="claseEmpleado">
							<option selected disabled>Clase Empleado</option>
							<option value="1">Confianza</option>
							<option value="2">Base</option>
						</select> <select class="custom-select my-1 mr-sm-2 col-2 mb-3"
							id="tipoPago">
							<option selected disabled>Tipo Pago</option>
							<option value="1">Semanal</option>
							<option value="2">Quincenal</option>
						</select>

						<div class="form-row">

							<div class="col-md-2 mb-3">
								<label for="calle">Fecha Ingreso</label> <input type="text"
									class="form-control" id="fechaIngreso" value="sysdate" required
									disabled>
							</div>

							<div class="col-md-3 mb-3">
								<label for="correo">Correo</label> <input type="text"
									class="form-control" id="correo" value="" required>
							</div>
						</div>

						<select class="custom-select my-1 mr-sm-2 col-5 mb-5" id="puesto"
							name="puesto">
							<option selected disabled>Puestos</option>
							<%
								ArrayList<String> puestos = (ArrayList<String>) request.getAttribute("puestos");
							int i = 0;

							for (int x = 0; x < puestos.size(); x++) {
								i = i + 1;

								out.print("<option value='" + i + "'>" + puestos.get(x) + "</option>");
							}
							%>
						</select>

						<button type="submit" class="btn btn-primary">Agregar
							Usuario</button>

					</form>



				</div>

				<!-- Codigo de Segundo Pill - Creacion de Puestos-->

				<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
					aria-labelledby="v-pills-profile-tab">

					<h2>Creación de Puestos</h2>

					<form>
						<select class="custom-select my-1 mr-sm-2 col-2 mb-3" id="area">
							<option selected disabled>Seleccione Area</option>
							<option value="1">Recursos Humanos</option>
							<option value="2">Tecnologia</option>
							<option value="3">Finanzas</option>
							<option value="4">Comercial</option>
						</select>

						<div class="form-row">
							<div class="col-md-3 mb-3">
								<label for="nombrePuesto">Nombre del Puesto</label> <input
									type="text" class="form-control" id="nombrePuesto" value=""
									required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="salarioPuesto">Salario del Puesto</label> <input
									type="number" class="form-control" id="salarioPuesto" value=""
									required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="horas">Horas de Jornada</label> <input type="text"
									class="form-control" id="horas" value="" required>
							</div>
						</div>

					</form>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#creacionPuesto">Agregar nuevo puesto</button>

				</div>

				<!-- Creacion del tercel Pill - Creacion de Nuevas Areas -->


				<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">

					<!--  En este comboBox se deberan cargar las area que actualmente existen desde la Base de Datos  -->
					<select class="custom-select my-1 mr-sm-2 col-2 mb-3" id="area">
						<option selected disabled>Areas Existentes</option>
						<option value="1" disabled>Recursos Humanos</option>
						<option value="2" disabled>Tecnologia</option>
						<option value="3" disabled>Finanzas</option>
						<option value="4" disabled>Comercial</option>
					</select>

					<form>

						<div class="form-group">

							<div class="col-md-3 mb-3">
								<label for="nuevaArea" class="col-form-label">Nombre de
									nueva Area:</label> <input type="text" class="form-control"
									id="nuevaArea">
							</div>
						</div>

						<div class="form-group">

							<div class="col-md-4 mb-3">
								<label for="valesDespensa" class="col-form-label">Vales
									de despensa correspondiente ($):</label> <input type="number"
									class="form-control" id="valesDespensa">
							</div>
						</div>

					</form>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#creacionArea">Crear</button>


				</div>

				<!-- Creacion del cuarto Pill - Editar Datos Empresariales de los Empleados -->


				<div class="tab-pane fade" id="editarUsuario" role="tabpanel"
					aria-labelledby="editarUsuario">

					<h2>Edicion de Datos Empresariales</h2>

					<div class="form-group row">

						<label for="idEmpleado" class="col-sm-2 col-form-label">Id
							Empleado:</label>
						<div class="col-sm-2">
							<input type="number" class="form-control" id="idEmpleado">
						</div>

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#staticBackdrop">Buscar</button>
					</div>


					<div class="container" style="padding-top: 30px;">

						<div class="row">
							<div class="col-lg-5 mb-5">
								<div class="card h-100">
									<h4 class="card-header">Datos Actuales</h4>
									<div class="card-body">

										<div class="form-group row">
											<label for="claseE" class="col-sm-4 col-form-label">Clase</label>
											<div class="col-sm-8">
												<input type="number" class="form-control" id="claseE"
													disabled>
											</div>

											<label for="tipoPago" class="col-sm-4 col-form-label">Tipo
												Pago</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="tipoPago"
													disabled>
											</div>

											<label for="puesto" class="col-sm-4 col-form-label">Puesto</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="puesto" disabled>
											</div>

											<label for="area" class="col-sm-4 col-form-label">Area</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="area" disabled>
											</div>

										</div>

									</div>
								</div>
							</div>

							<!-- Formulario para editar los datos empresariales del empleado cargado -->

							<div class="col-lg-5 mb-5">
								<div class="card h-100">
									<h4 class="card-header">Nuevos Datos</h4>
									<div class="card-body">

										<form name="nuevosDatos" onsubmit="return valforms(this)">

											<div class="form-row">
												<select class="custom-select my-1 mr-sm-2 col-5 mb-5"
													id="claseEmpleado">
													<option selected disabled>Clase Empleado</option>
													<option value="1">Confianza</option>
													<option value="2">Base</option>
												</select> <select class="custom-select my-1 mr-sm-2 col-5 mb-5"
													id="tipoPago">
													<option selected disabled>Tipo Pago</option>
													<option value="1">Semanal</option>
													<option value="2">Quincenal</option>
												</select>



												<!--  Dependiendo del area que se eligio se deberan cargar los puestos que existen en dicha area-->



											</div>

										</form>

									</div>
								</div>
							</div>
						</div>

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#edicionDatos">Confirmar Edición</button>
						<br> <br>

					</div>


				</div>

			</div>
		</div>
	</div>

	<!-- Portfolio Modal 1 -->


	<!-- Portfolio Modal - Modulo no terminado -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Aviso!!</h5>
				</div>
				<div class="modal-body1">Hay dos modulos que no estan
					diseñados. Este es uno de ellos :C</div>
				<br>
				<div class="modal-footer1">

					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

					</div>

				</div>
			</div>
		</div>
	</div>



	<!-- Modal - Creacion de puesto -->

	<div class="modal fade" id="creacionPuesto" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacion
						Puesto</h5>
					<hr>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Se va a crear un nuevo puesto <br> ¿Quiere continuar?
				</div>
				<div class="modal-footer"
					style="padding-top: 10px; padding-bottom: 15px;">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Aceptar</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal - Creacion de Areas -->

	<div class="portfolio-modal modal fade" id="creacionArea"
		data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="portfolioModal1Label" aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacion
						Area</h5>
					<hr>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Se va a crear una nueva Area<br> ¿Quiere continuar?
				</div>
				<div class="modal-footer"
					style="padding-top: 10px; padding-bottom: 15px;">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Aceptar</button>
				</div>
			</div>
		</div>

	</div>


	<!-- Modal - Edicion de Datos -->

	<div class="portfolio-modal modal fade" id="edicionDatos"
		data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="edicionDatos" aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacioón</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Se van a modificar los datos<br> ¿Quiere continuar?
				</div>
				<div class="modal-footer"
					style="padding-top: 10px; padding-bottom: 15px;">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary">Aceptar</button>
				</div>
			</div>
		</div>

	</div>



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